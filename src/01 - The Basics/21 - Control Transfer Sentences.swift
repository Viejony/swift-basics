// Control transfer sentences: continue, break, fallthrough, return

// Continue
let sentence = "Great minds thinks alike"
let charsToRemove: [Character] = ["a", "e", "i", "o", "u"]
var filteredSentence = ""
for ch in sentence{
    if charsToRemove.contains(ch){
        continue
    }
    filteredSentence.append(ch)
}
print(filteredSentence)


// Break
var filteredSentence2 = ""
for ch in sentence{
    if ch == "s"{
        break
    }
    filteredSentence2.append(ch)
}
print(filteredSentence2)


// Fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " a prime number"
    fallthrough
default:
    description += " and a integer"
}
print(description)

// return
var person1 = ["name":"Jhony", "age":"32", "isMale": true] as [String:Any]
var person2 = ["age":"32", "isMale": false] as [String:Any]
print(person1)
print(person2)
testUserValidation(person: person1)
testUserValidation(person: person2)

func testUserValidation(person:[String:Any]){
    guard let name = person["name"] else{
        print("Unknown name")
        return
    }
    print("The name is \(name)")
}