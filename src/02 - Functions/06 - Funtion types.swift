// Functions can be stored in vaiables!!
// For this reason, funtions has types

// (Int, Int) -> Int 
func addTwoInts(_ a: Int, _ b: Int) -> Int{
    return a + b
}

// (Int, Int) -> Int 
func multTwoInts(_ a: Int, _ b: Int) -> Int{
    return a * b
}

// () -> Void
func helloWorld(){
    print("Hello World")
}

var mathFunction: (Int, Int) -> Int = addTwoInts
print(mathFunction(7, 7))

mathFunction = multTwoInts
print(mathFunction(7, 7))

// Functions can receive other funtions, because 
// functions are variables
func printMathResult(
    _ mathFunc: (Int, Int) -> Int, 
    _ a: Int, 
    _ b: Int)
{
    print(mathFunc(a, b))
}
printMathResult(addTwoInts, 5, 7)


// A function can return another function
func stepForward(_ input: Int) -> Int{
    return input + 1
}
func stepBackward(_ input: Int) -> Int{
    return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int{
    return backward ? stepBackward : stepForward
}

var value = 7
let moveNearerZero = chooseStepFunction(backward: value > 0)
while value != 0{
    print("\(value)...")
    value = moveNearerZero(value)
}
print("Zero!!!")
