defmodule Mix.Tasks.Hedysarum.CollectNix do
  @shortdoc "Collect packages from Arch core.db, evaluate deps with Nix, write packages.pl"
  @moduledoc """
  Runs Arch-based collection and Nix dependency evaluation, then writes
  the resulting 4-arg Prolog facts (plus Pathfinder rules) to priv/packages.pl.

  Requires: Nix installed (for dependency version evaluation).
  """
  use Mix.Task

  @impl Mix.Task
  def run(_args) do
    Mix.Task.run("app.start")

    priv_dir = :code.priv_dir(:hedysarum_core) |> to_string()
    path = Path.join(priv_dir, "packages.pl")

    case HedysarumCore.Collector.write_arch_core_to(path) do
      :ok ->
        Mix.shell().info("Wrote #{path}")

      {:error, reason} ->
        Mix.raise("Failed to write packages: #{inspect(reason)}")
    end
  end
end
