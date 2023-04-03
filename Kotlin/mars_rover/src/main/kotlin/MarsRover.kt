class MarsRover(
    private var x: Int, private var y: Int, private var orientation: String
) {

    private val cardinals = arrayOf("N", "E", "S", "W")
    private var index: Int = 0

    init {
        index = cardinals.indexOf(orientation)
    }

    fun move() {
        when (facing()) {
            "N" -> y += 1
            "E" -> x += 1
            "S" -> y -= 1
            "W" -> x -= 1
        }
    }

    fun turnRight() {
        index += 1
    }

    fun turnLeft() {
        index -= 1
    }

    fun position(): String = "$x $y ${facing()}"

    private fun facing(): String = cardinals[index.mod(4)]
}