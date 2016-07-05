defmodule CoincapIoTest do
  use ExUnit.Case
  doctest CoincapIo

  test "front API method" do
    assert Vex.valid?(hd CoincapIo.front)
  end
end
