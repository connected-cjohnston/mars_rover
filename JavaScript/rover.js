'use strict'

class MarsRover {
  constructor(grid, x, y, orientation) {
    this.grid = grid;
    this.x = x;
    this.y = y;

    this.cardinals = ['N', 'E', 'S', 'W'];
    this.index = this.cardinals.indexOf(orientation);
  }

  move() {
    const moveFunctions = new Map();
    moveFunctions.set('N', () => { this.moveNorth() });
    moveFunctions.set('E', () => { this.moveEast() });
    moveFunctions.set('S', () => { this.moveSouth() });
    moveFunctions.set('W', () => { this.moveWest() });

    moveFunctions.get(this.orientation())();
  }

  turn(dir) {
    if (dir === 'R') {
      this.index += 1;
    } else {
      this.index -= 1;
    }
  }

  orientation() {
    return this.cardinals[this.index % 4];
  }

  position() {
    return `${this.x} ${this.y} ${this.orientation()}`;
  }

  moveNorth() {
    if (this.grid.isInside(this.x, this.y + 1)) {
      this.y += 1;
    };
  }

  moveEast() {
    if (this.grid.isInside(this.x + 1, this.y)) {
      this.x += 1;
    }
  }

  moveSouth() {
    if (this.grid.isInside(this.x, this.y - 1)) {
      this.y -= 1;
    }
  }

  moveWest() {
    if (this.grid.isInside(this.x - 1, this.y)) {
      this.x -= 1;
    }
  }
}

module.exports = MarsRover;
