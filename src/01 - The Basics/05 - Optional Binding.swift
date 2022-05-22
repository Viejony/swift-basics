// Optional binding
let surveyAnswer = Int("lola")
if let actualAnswer = surveyAnswer{
    // The new variable was correctly created from the cast
    print("surveyAnswer = \(actualAnswer)")
}else{
    // The new variable was not a castable value
    print("surveyAnswer is a nil")
}

// Optional binding with multiple casts and conditionals
if let firstNumber = Int("63"),
   let secondNumber = Int("43"),
   firstNumber < secondNumber, 
   secondNumber < 100
{
    print("You win")
}else{
    print("You loose")
}


// Implicit Unwrap
let assumedString: String! = "This is a string"
let implicitString: String = assumedString

print(implicitString)
