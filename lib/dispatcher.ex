defmodule HedysarumCore.Dispatcher do
  def execute_plan(plan) do
    plan
    |> Task.async_stream(fn pkg ->
      HedysarumCore.Executor.run_install(pkg)
    end, max_concurrency: System.schedulers_online() * 2)
    |> Stream.run()
  end
end
