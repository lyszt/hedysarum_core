defmodule HedysarumCore.Dispatcher do
  def execute_plan(plan) do
    plan
    |> Task.async_stream(fn pkg ->
      {:ok, version} = HedysarumCore.Pathfinder.find_version(pkg)
      HedysarumCore.Executor.run_install(pkg, Integer.to_string(version))
    end, max_concurrency: System.schedulers_online() * 2)
    |> Stream.run()
  end
end
