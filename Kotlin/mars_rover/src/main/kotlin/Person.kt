class Person(val firstName: String = "Peter", val lastName: String = "Parker") {

    var nickName: String? = null
        set(value) {
            field = value
            println("the new nickname is $field")
        }
        get() {
//            println("the return value is $field")
            return field
        }

    fun printInfo() {
        val nickNameToPrint = nickName ?: "no nickname"
        println("$firstName ($nickNameToPrint) $lastName")
    }
}