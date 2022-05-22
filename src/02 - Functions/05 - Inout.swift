// Any argument is constant or inmutable by default
func addOne(number: Int){
    var number2 = number
    number2 += 1
    print("The number is \(number2)")
}
var x = 1
addOne(number: x)

// Inout: the received parameter cna be changed inside the function
func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let temp = a
    a = b
    b = temp
}
var someInt = 3
var otherInt = 7
print("someInt = \(someInt), otherInt = \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("someInt = \(someInt), otherInt = \(otherInt)")