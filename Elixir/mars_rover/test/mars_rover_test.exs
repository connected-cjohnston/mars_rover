defmodule MarsRoverTest do
  use ExUnit.Case
  doctest MarsRover

  def rover(x, y, orientation) do
    [x: x, y: y, orientation: orientation]
  end

  test "should move North one square" do
    assert MarsRover.move(rover(1, 1, "N")) == rover(1, 2, "N")
  end

  test "should move East one square" do
    assert MarsRover.move(rover(1, 1, "E")) == rover(2, 1, "E")
  end

  test "should move south one square" do
    assert MarsRover.move(rover(1, 2, "S")) == rover(1, 1, "S")
  end

  test "should move West one square" do
    assert MarsRover.move(rover(2, 1, "W")) == rover(1, 1, "W")
  end

  test "should turn E when facing N and turning right" do
    assert MarsRover.turn(rover(1, 1, "N"), "R") == rover(1, 1, "E")
  end

  test "should turn S when facing E and turning right" do
    assert MarsRover.turn(rover(1, 1, "E"), "R") == rover(1, 1, "S")
  end

  test "should turn W when facing S and turning right" do
    assert MarsRover.turn(rover(1, 1, "S"), "R") == rover(1, 1, "W")
  end

  test "should turn N when facing W and turning right" do
    assert MarsRover.turn(rover(1, 1, "W"), "R") == rover(1, 1, "N")
  end

  test "should turn W when facing N and turning left" do
    assert MarsRover.turn(rover(1, 1, "N"), "L") == rover(1, 1, "W")
  end

  test "should turn S when facing W and turning left" do
    assert MarsRover.turn(rover(1, 1, "W"), "L") == rover(1, 1, "S")
  end
end
