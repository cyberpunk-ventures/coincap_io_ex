defmodule CoincapIoTest do
  use ExUnit.Case
  doctest CoincapIo

  test "front API method" do
    assert Vex.valid?(CoincapIo.front)
  end
end
