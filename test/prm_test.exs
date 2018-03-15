defmodule PRMTest do
  use ExUnit.Case
  doctest PRM

  test "greets the world" do
    assert PRM.hello() == :world
  end
end
