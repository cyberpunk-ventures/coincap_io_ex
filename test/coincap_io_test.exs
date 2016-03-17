defmodule CoincapIoTest do
  use ExUnit.Case
  doctest CoincapIo

  test "front API method" do
    assert is_list(CoincapIo.front)
  end
end
