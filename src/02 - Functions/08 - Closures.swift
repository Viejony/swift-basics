// Closure: cleaner syntax

let names = ["Edge", "Chris", "Richard", "Freddy", "K"]
func backward(_ s1: String, _ s2: String) -> Bool{
    return s1 > s2
}

print(backward("Javier", "L"))

var reversedNames = names.sorted(by: backward)
print(reversedNames)

/*
{ (params) -> return type in
    // Closure code
}
*/

var otherReversedNames = names.sorted(by:{ (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(otherReversedNames)

otherReversedNames = names.sorted(by:{ s1, s2 in s1 > s2})
print(otherReversedNames)

otherReversedNames = names.sorted(by:{ $0 > $1})
print(otherReversedNames)

otherReversedNames = names.sorted(by: >)
print(otherReversedNames)


// Trailing closure
func someFunctionThatTakesAClosure(closure: () -> Void){
    closure()
}
someFunctionThatTakesAClosure(closure: {
    print("Iam the param closure")
})

// Syntax for trailing closure
someFunctionThatTakesAClosure{
    print("Iam the param closure using trailing closure")
}

reversedNames = names.sorted{
    $0>$1
}
print(reversedNames)

// Example: convert a integer to a string using map
let digitNames = [
    0:"Zero", 
    1:"One", 
    2:"Two", 
    3:"Three", 
    4:"Four", 
    5:"Five", 
    6:"Six", 
    7:"Seven", 
    8:"Eight", 
    9:"Nine"]
let numbers = [16, 78, 13, 64]
let numberString = numbers.map{(number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number%10]! + " " + output
        number /= 10
    } while number > 0
    return output
}
print(numbers)
print(numberString)



