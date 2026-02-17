defmodule HedysarumCoreTest do
  use ExUnit.Case
  doctest HedysarumCore

  test "greets the world" do
    assert HedysarumCore.hello() == :world
  end
end
