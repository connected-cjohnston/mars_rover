'use strict'

// Test Input
// 5 5
// 1 2 N
// LMLMLMLMM
// 3 3 E
// MMRMMRMRRM

// Expected Output
// 1 3 N
// 5 1 E

const MarsRover = require('./rover');
const Grid = require('./grid');

describe('marsRover', () => {
  let grid = new Grid(5, 5)

  it('should return its starting position', () => {
    var rover = new MarsRover(grid, 1, 1, 'N');
    expect(rover.position()).toEqual('1 1 N');
  })

  it('should move north one square', () => {
    var rover = new MarsRover(grid, 1, 1, 'N');
    rover.move();
    expect(rover.position()).toEqual('1 2 N')
  })

  it('should turn right to face E', () => {
    const rover = new MarsRover(grid, 2, 2, 'N');
    rover.turn('R');
    expect(rover.position()).toEqual('2 2 E')
  })

  it('should turn left', () => {
    const rover = new MarsRover(grid, 2, 3, 'E')
    rover.turn('L')
    expect(rover.position()).toEqual('2 3 N')
  })

  it('should not move outside the grid', () => {
    const rover = new MarsRover(grid, 2, 4, 'N')
    rover.move();
    expect(rover.move().position()).toEqual('2 4 N')
  })
})

describe('grid', () => {
  it('should return true when point is inside the grid', () => {
    const grid = new Grid(5, 5)
    expect(grid.isInside(2, 3)).toEqual(true)
    expect(grid.isInside(0, 3)).toEqual(true)
    expect(grid.isInside(4, 3)).toEqual(true)
    expect(grid.isInside(3, 0)).toEqual(true)
    expect(grid.isInside(3, 4)).toEqual(true)
  })

  it('should return false when point is outside the grid', () => {
    const grid = new Grid(5, 5)
    expect(grid.isInside(5, 3)).toEqual(false)
    expect(grid.isInside(3, 5)).toEqual(false)
    expect(grid.isInside(-1, 3)).toEqual(false)
    expect(grid.isInside(-3, -1)).toEqual(false)
  })
})
