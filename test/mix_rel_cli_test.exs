defmodule MixRelCliTest do
  use ExUnit.Case
  doctest MixRelCli

  test "greets the world" do
    assert MixRelCli.hello() == :world
  end
end
