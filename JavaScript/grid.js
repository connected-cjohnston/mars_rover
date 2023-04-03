'use strict'

class Grid {
  constructor(width, length) {
    this.width = width;
    this.length = length;
  }

  isInside(x, y) {
    return x >= 0 && x < this.width && y >= 0 && y < this.length
  }
}

module.exports = Grid;
