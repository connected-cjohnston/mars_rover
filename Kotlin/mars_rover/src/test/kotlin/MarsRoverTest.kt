import kotlin.test.Test
import kotlin.test.assertEquals

class MarsRoverTest {
    @Test
    fun testReturnItsStartingPosition() {
        val rover = MarsRover(2, 3, "N")
        assertEquals("2 3 N", rover.position())
    }

    @Test
    fun testRoverShouldMoveNorthOneSquare() {
        val rover = MarsRover(2, 2, "N")
        rover.move()
        assertEquals("2 3 N", rover.position())
    }

    @Test
    fun testRoverShouldMoveEastOneSquare() {
        val rover = MarsRover(2, 2, "E")
        rover.move()
        assertEquals("3 2 E", rover.position())
    }

    @Test
    fun testRoverShouldMoveSouthOneSquare() {
        val rover = MarsRover(2, 2, "S")
        rover.move()
        assertEquals("2 1 S", rover.position())
    }

    @Test
    fun testRoverShouldMoveWestOneSquare() {
        val rover = MarsRover(2, 2, "W")
        rover.move()
        assertEquals("1 2 W", rover.position())
    }

    @Test
    fun testRoverTurnsRight() {
        val rover = MarsRover(2,2, "N")
        rover.turnRight()
        assertEquals("2 2 E", rover.position())
    }

    @Test
    fun roverCanTurnLeft() {
        val rover = MarsRover(2, 2, "N")
        rover.turnLeft()
        assertEquals("2 2 W", rover.position())
    }
}