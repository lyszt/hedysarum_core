defmodule HedysarumCore.Executor do
  @on_load :load_nifs

  def load_nifs do
    path = :code.priv_dir(:hedysarum_core) ++ ~c"/hedysarum_executor"
    :erlang.load_nif(path, 0)
  end

  def run_install(_pkg, _version), do: :erlang.nif_error(:nif_not_loaded)
end
