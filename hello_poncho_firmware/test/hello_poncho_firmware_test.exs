defmodule HelloPonchoFirmwareTest do
  use ExUnit.Case
  doctest HelloPonchoFirmware

  test "greets the world" do
    assert HelloPonchoFirmware.hello() == :world
  end
end
