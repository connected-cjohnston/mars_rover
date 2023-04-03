defmodule MarsRover do
  @moduledoc """
  Represents functions for a Mars Rover
  """

  @doc """
  Moves the rover forwards one square in the direction that it's facing

  Returns rover

  ## Examples

      iex> MarsRover.move([x: 1, y: 1, orientation: "N"])
      [x: 1, y: 2, orientation: "N"]

  """
  def move(x: x, y: y, orientation: "N"), do: [x: x, y: y + 1, orientation: "N"]
  def move(x: x, y: y, orientation: "E"), do: [x: x + 1, y: y, orientation: "E"]
  def move(x: x, y: y, orientation: "S"), do: [x: x, y: y - 1, orientation: "S"]
  def move(x: x, y: y, orientation: "W"), do: [x: x - 1, y: y, orientation: "W"]

  @doc """
  Turns the rover left or right one cardinal position

  Returns rover with the new orientation

  ## Examples

      iex> MarsRover.turn([x: 1, y: 1, orientation: "N"], "R")
      [x: 1, y: 1, orientation: "E"]
      iex> MarsRover.turn([x: 1, y: 1, orientation: "N"], "L")
      [x: 1, y: 1, orientation: "W"]

  """
  def turn([x: x, y: y, orientation: orientation], "R") do
    case orientation do
      "N" -> [x: x, y: y, orientation: "E"]
      "E" -> [x: x, y: y, orientation: "S"]
      "S" -> [x: x, y: y, orientation: "W"]
      "W" -> [x: x, y: y, orientation: "N"]
    end
  end

  def turn([x: x, y: y, orientation: orientation], "L") do
    case orientation do
      "N" -> [x: x, y: y, orientation: "W"]
      "W" -> [x: x, y: y, orientation: "S"]
      "S" -> [x: x, y: y, orientation: "E"]
      "E" -> [x: x, y: y, orientation: "N"]
    end
  end
end
