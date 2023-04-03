class Rover
  DIRECTIONS = %w[N E S W]

  attr_reader :x, :y

  def initialize(x, y, orientation)
    @x = x
    @y = y
    @direction_index = DIRECTIONS.index(orientation)
  end

  def move(cmd)
    {
      "L" => -> { turn_left },
      "R" => -> { turn_right },
      "F" => -> { step_forwards }
    }[
      cmd
    ].call
    self
  end

  def location
    "#{x},#{y},#{facing}"
  end

  private

  def facing
    DIRECTIONS[@direction_index % 4]
  end

  def turn_left
    @direction_index -= 1
  end

  def turn_right
    @direction_index += 1
  end

  def step_forwards
    {
      "N" => -> { @y -= 1 },
      "E" => -> { @x += 1 },
      "S" => -> { @y += 1 },
      "W" => -> { @x -= 1 }
    }[
      facing
    ].call
  end
end
