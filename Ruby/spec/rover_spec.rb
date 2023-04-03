require "rspec"
require "./src/rover"

RSpec.describe Rover do
  it "should turn left" do
    rover = Rover.new(3, 3, "N")

    expect(rover.move("L").location).to eq("3,3,W")
    expect(rover.move("L").location).to eq("3,3,S")
    expect(rover.move("L").location).to eq("3,3,E")
    expect(rover.move("L").location).to eq("3,3,N")
    expect(rover.move("L").location).to eq("3,3,W")
  end

  it "should turn right" do
    rover = Rover.new(3, 3, "N")

    expect(rover.move("R").location).to eq("3,3,E")
    expect(rover.move("R").location).to eq("3,3,S")
    expect(rover.move("R").location).to eq("3,3,W")
    expect(rover.move("R").location).to eq("3,3,N")
    expect(rover.move("R").location).to eq("3,3,E")
  end

  it "should move forwards when facing North" do
    rover = Rover.new(3, 3, "N")

    expect(rover.move("F").location).to eq("3,2,N")
  end

  it "should move forwards when facing East" do
    rover = Rover.new(3, 3, "E")

    expect(rover.move("F").location).to eq("4,3,E")
  end

  it "should move forwards when facing South" do
    rover = Rover.new(3, 3, "S")

    expect(rover.move("F").location).to eq("3,4,S")
  end

  it "should move forwards when facing West" do
    rover = Rover.new(3, 3, "W")

    expect(rover.move("F").location).to eq("2,3,W")
  end
end
