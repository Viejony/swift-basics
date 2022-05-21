
let minAge = 18
let possibleAge = "31"
let ageConverted1 = Int(possibleAge) // Can be other thing
let ageConverted2: Int? = Int("Paco")  // Is a nil

print(ageConverted1!)  // Force unwrapping

if(ageConverted2 != nil){
    print(ageConverted2)
}else{
    print("ageCOnverted is a nil")
}

let minAge = 18
let possibleAge = "31"
let ageConverted1 = Int(possibleAge) // Can be other thing
let ageConverted2: Int? = Int("Paco")  // Is a nil

print(ageConverted1!)  // Force unwrapping

if(ageConverted2 != nil){
    print(ageConverted2)
}else{
    print("ageCOnverted is a nil")
}

