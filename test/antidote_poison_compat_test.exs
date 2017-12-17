defmodule AntidotePoisonCompatTest do
  use ExUnit.Case
  doctest AntidotePoisonCompat

  test "greets the world" do
    assert AntidotePoisonCompat.hello() == :world
  end
end
