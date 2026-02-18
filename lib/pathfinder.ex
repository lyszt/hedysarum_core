defmodule HedysarumCore.Pathfinder do
  use GenServer
  require Logger

  # --- Client API ---

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, opts, name: __MODULE__)
  end

  @doc "Load your package rules (.pl file) into the knowledge base"
  def load_rules(file_path) do
    GenServer.call(__MODULE__, {:load, file_path})
  end

  @doc "Find the install path for a package name (atom or string)"
  def find_path(package_name) do
    GenServer.call(__MODULE__, {:solve, package_name})
  end

  @doc "Look up the version of a package in the knowledge base"
  def find_version(package_name) do
    GenServer.call(__MODULE__, {:version, package_name})
  end

  # --- Server Callbacks ---

  @impl true
  def init(_opts) do
    Logger.info("🔍 Pathfinder (Elxlog Engine) online.")

    priv_dir = :code.priv_dir(:hedysarum_core) |> to_string()
    packages_path = Path.join(priv_dir, "packages.pl")

    case File.read(packages_path) do
      {:ok, content} ->
        tokens = Read.tokenize(content <> "\n", :filein)
        kb = Prove.reconsult(tokens, [])
        Logger.info("Knowledge base auto-loaded: #{packages_path}")
        {:ok, %{kb: kb, loaded_files: [packages_path]}}

      {:error, _reason} ->
        Logger.info("No packages.pl found at #{packages_path}; starting with empty KB")
        {:ok, %{kb: [], loaded_files: []}}
    end
  end

  @impl true
  def handle_call({:load, path}, _from, state) do
    case File.read(path) do
      {:ok, content} ->
        # 1. Tokenize the file content
        tokens = Read.tokenize(content <> "\n", :filein)

        # 2. Use Prove.reconsult to parse tokens into the definition list
        # Prove.reconsult(tokens, existing_def) returns a new definition list
        new_kb = Prove.reconsult(tokens, state.kb)

        Logger.info("Knowledge base loaded: #{path}")
        {:reply, :ok, %{state | kb: new_kb, loaded_files: [path | state.loaded_files]}}

      {:error, reason} ->
        Logger.error("Could not read file: #{path} (Reason: #{inspect(reason)})")
        {:reply, {:error, reason}, state}
    end
  end

  @impl true
  def handle_call({:solve, package}, _from, state) do
    # 1. Prepare the query: resolve(package, Path).
    # We turn the input into a Prolog-compatible atom.
    pkg_atom = if is_binary(package), do: String.to_atom(package), else: package

    # This matches the internal Elxlog structure for a query
    # [:pred, [predicate_name, arg1, arg2]]
    # We use {:Path, 0} as our variable at nest level 0
    query = [:pred, [:resolve, pkg_atom, {:Path, 0}]]

    # 2. Call the engine: Prove.prove(Query, SucceedingGoals, Env, KB, NestLevel)
    # y = [] (no succeeding goals yet)
    # env = [] (empty environment)
    # n = 1 (start alpha conversion at level 1)
    case Prove.prove(query, [], [], state.kb, 1) do
      {true, env, _new_kb} ->
        # 3. Extract the 'Path' variable from the Environment (env)
        # env looks like [[{:Path, 0}, [pkg_c, pkg_b, pkg_a]], ...]
        path_result = Prove.deref({:Path, 0}, env)
        {:reply, {:ok, path_result}, state}

      {false, _env, _kb} ->
        {:reply, {:error, :no_solution}, state}
    end
  end

  @impl true
  def handle_call({:version, package}, _from, state) do
    pkg_atom = if is_binary(package), do: String.to_atom(package), else: package
    # query: package(pkg_atom, Ver, _, _)
    query = [:pred, [:package, pkg_atom, {:Ver, 0}, :_, :_]]

    case Prove.prove(query, [], [], state.kb, 1) do
      {true, env, _} ->
        version = Prove.deref({:Ver, 0}, env)
        {:reply, {:ok, version}, state}

      {false, _, _} ->
        {:reply, {:error, :not_found}, state}
    end
  end
end
