defmodule HedysarumCore.Collector do
  @moduledoc """
  Collects package metadata from the Arch Linux repository (core.db). Uses Nix
  only to evaluate dependency versions (MinVersions) for the Prolog KB.
  """

  @core_db "https://mirrors.kernel.org/archlinux/core/os/x86_64/core.db"
  @nixpkgs_ref "nixpkgs#legacyPackages.x86_64-linux"

  @doc "Fetches the latest stable version for a package (Repology, Arch)."
  def get_latest_version(package_name) do
    url = "https://repology.org/api/v1/project/#{package_name}"

    case Req.get!(url).body do
      projects when is_list(projects) ->
        projects
        |> Enum.find(fn p -> p["repo"] == "arch" end)
        |> Map.get("version")
    end
  end

  @doc "Generates a Prolog fact for Pathfinder (Repology-only; no deps)."
  def generate_fact(package_name) do
    version = get_latest_version(package_name)
    "package(#{package_name}, [deps_here], \"#{version}\")."
  end

  # --- Arch: package list + versions + dependency names ---

  @doc """
  Downloads Arch core.db, parses desc files, and returns a list of package maps
  with :name, :version, and :depends (dependency names only, no version constraints).
  """
  def steal_metadata_arch do
    require Logger
    Logger.info("Downloading Arch core.db...")
    %{body: tarball} = Req.get!(@core_db)
    {:ok, files} = :erl_tar.extract({:binary, tarball}, [:memory, :compressed])

    files
    |> Enum.filter(fn {name, _} -> String.ends_with?(to_string(name), "/desc") end)
    |> Enum.map(fn {_, content} -> parse_desc(to_string(content)) end)
  end

  defp parse_desc(content) do
    name = case Regex.run(~r/%NAME%\n(.+)\n/, content) do
      [_, n] -> n
      _ -> nil
    end
    version = case Regex.run(~r/%VERSION%\n(.+)\n/, content) do
      [_, v] -> v
      _ -> "0"
    end

    depends =
      case Regex.run(~r/%DEPENDS%\n([\s\S]+?)\n\n/, content) do
        [_, list] -> list |> String.split("\n") |> Enum.map(&clean_dep/1) |> Enum.reject(&(&1 == ""))
        _ -> []
      end

    %{name: name, version: version, depends: depends}
  end

  defp clean_dep(dep) do
    dep |> String.trim() |> String.split(~r/[<>=]/) |> hd()
  end

  # --- Nix: dependency evaluation only (for MinVersions) ---

  @doc """
  For each package, uses Nix to evaluate the version of each dependency (in nixpkgs).
  Returns the same list with :min_versions added (list of integers, same length as :depends).
  Requires Nix. Unresolved deps get min version 0.
  """
  def evaluate_deps_with_nix(packages) when is_list(packages) do
    packages
    |> Task.async_stream(
      &add_min_versions/1,
      max_concurrency: 8,
      ordered: true
    )
    |> Enum.map(fn {:ok, p} -> p end)
  end

  defp add_min_versions(p) do
    min_vers =
      (p[:depends] || [])
      |> Enum.map(&nix_eval_package_version/1)

    Map.put(p, :min_versions, min_vers)
  end

  defp nix_eval_package_version(dep_name) when is_binary(dep_name) do
    # nixpkgs attr names are usually lowercase
    attr = String.downcase(dep_name)
    ref = "#{@nixpkgs_ref}.#{attr}"

    args = [
      "eval",
      ref,
      "--apply", "p: p.version or \"0\"",
      "--json"
    ]

    try do
      case System.cmd("nix", args, stderr_to_stdout: true) do
        {json, 0} ->
          case Jason.decode(json) do
            {:ok, v} when is_binary(v) -> version_to_int(v)
            _ -> 0
          end

        _ ->
          0
      end
    rescue
      # nix not in PATH (:enoent) or other runtime error
      _ -> 0
    end
  end

  defp nix_eval_package_version(_), do: 0

  defp version_to_int(version) when is_binary(version) do
    case Regex.run(~r/^(\d+)/, version) do
      [_, n] -> String.to_integer(n)
      _ -> 0
    end
  end

  defp version_to_int(_), do: 0

  # --- 4-arg Prolog for Pathfinder ---

  @doc false
  def to_kb_facts(packages) when is_list(packages) do
    packages
    |> Enum.reject(fn p -> p[:name] in [nil, ""] end)
    |> Enum.map(fn p ->
      name_atom = p[:name] |> to_string() |> String.to_atom()
      ver_int = version_to_int(p[:version] || "0")
      deps = (p[:depends] || []) |> Enum.map(&String.to_atom/1)
      min_vers = p[:min_versions] || List.duplicate(0, length(deps))
      "package(#{name_atom}, #{ver_int}, #{inspect(deps)}, #{inspect(min_vers)})."
    end)
    |> Enum.join("\n")
  end

  @doc """
  Collects packages from Arch, evaluates dependency versions with Nix, and
  returns a string of 4-arg Prolog facts for Pathfinder.
  """
  def collect_arch_core do
    steal_metadata_arch()
    |> evaluate_deps_with_nix()
    |> to_kb_facts()
  end

  @doc """
  Calls collect_arch_core/0 and writes the result to path, appending the
  Pathfinder rule definitions so the file is a complete KB.
  """
  def write_arch_core_to(path) do
    facts = collect_arch_core()
    content = facts <> "\n" <> pathfinder_rules()
    File.write(path, content)
  end

  defp pathfinder_rules do
    """
    % version_ok(+Pkg, +MinVer)
    version_ok(Pkg, MinVer) :-
        package(Pkg, Ver, _, _),
        Ver >= MinVer.

    % install_order(+Pkg, +MinVer, +Seen, -Result)
    install_order(Pkg, MinVer, Seen, Seen) :-
        member(Pkg, Seen),
        version_ok(Pkg, MinVer).
    install_order(Pkg, MinVer, Seen, Result) :-
        not(member(Pkg, Seen)),
        version_ok(Pkg, MinVer),
        package(Pkg, _, Deps, MinVers),
        install_deps(Deps, MinVers, Seen, Seen1),
        append(Seen1, [Pkg], Result).

    % install_deps(+Deps, +MinVers, +Seen, -Result)
    install_deps([], [], Seen, Seen).
    install_deps([H|T], [V|Vs], Seen, Result) :-
        install_order(H, V, Seen, Seen1),
        install_deps(T, Vs, Seen1, Result).

    % resolve(+Pkg, -Path)
    resolve(Pkg, Path) :-
        install_order(Pkg, 0, [], Path).
    """
  end
end
