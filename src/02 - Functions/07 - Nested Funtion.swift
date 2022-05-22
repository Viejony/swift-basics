// Nested functions
func chooseStepFunction(backward: Bool) -> (Int) -> Int{
    func stepForward(_ input: Int) -> Int{
        return input + 1
    }

    func stepBackward(_ input: Int) -> Int{
        return input - 1
    }

    return backward ? stepBackward : stepForward
}

var value = 7
let moveNearerZero = chooseStepFunction(backward: value > 0)
while value != 0{
    print("\(value)...")
    value = moveNearerZero(value)
}
print("Zero!!!")