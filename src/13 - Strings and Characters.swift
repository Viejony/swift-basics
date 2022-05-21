// Single line string
let someString = "Hello, Iam a String"

// Multi line string
let multiLineString = """
    Hello \
    this 
    is \
    a
    multiline \
    string
    """
print(multiLineString)

// Using explicit declaration of String class 
let name: String = "Jhony"
print("name = \(name)")

let name2 = String("Lola")
print("name2 = \(name2)")

let name3 = String()
if name3.isEmpty {
    print("The string is empty")
}else{
    print("String has a value")
}

// Using especial chars
let wiseWords = "\"La imaginación es más importante que el saber\" - Albert E."
print(wiseWords)

let dollarSign = "\u{24}"
print(dollarSign)

let blackHeart = "\u{2665}"
print(blackHeart)

// Adding content. Only works with var, but don't works with let
var phrase = "A horse"
phrase += " and a soldier"
print(phrase)



// Caracteres
let me = " Jhonyfer Angarita 😎"
for ch in me{
    print(ch)
}

let exclamationMark: Character = "!"
print(exclamationMark)

let nameChars: [Character] = ["J","H","O","N","Y"]
let nameFromChars = String(nameChars)
print(nameChars)
print(nameFromChars)


// Indices
var greeting = "Hello!"
print(greeting[greeting.startIndex])
print(greeting[greeting.index(before: greeting.endIndex)])

for i in greeting.indices{
    print("\(greeting[i]) =  \(i)")
}

greeting.insert("!", at: greeting.endIndex)
print(greeting)

let range = greeting.index(greeting.endIndex, offsetBy: -2)..<greeting.endIndex
print(range)
greeting.removeSubrange(range)
print(greeting)

    // Substrings

let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index]
print(firstPart)

    // Prefijos y sufijos
let newGreeting = "Hola, soy Jhony"
print(newGreeting.hasPrefix("Hola"))
print(newGreeting.hasSuffix("ny"))

    // Unicode
let ghost = "Fantasma 🥶"
for code in ghost.utf8{
    print(code, terminator: " ")
}

print()
for code in ghost.utf16{
    print(code, terminator: " ")
}

print()
for code in ghost.unicodeScalars{
    print(code, terminator: " ")
}
