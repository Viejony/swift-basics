// Switch - Case
let someChar: Character = "Z"
switch someChar {
case "a", "A":
    print("First letter of alphabet")
case "z", "Z":
    print("Last letter of alphabet")
default:
    print("I don't know")
}

// Using ranges
let moons = 62
let phrase = "Saturn's moons"
let naturalCount: String

switch moons{
    case 0:
        print("there are no moons")
    case 1..<5:
        print("There are some moons")
    case 5..<12:
        print("There are many moons")
    case 12..<100:
        print("There are so much moons")
    case 100..<1000:
        print("There a fuck of moons")
    default:
        print("Thats impossible!!")
}

// Using tuples
let somePoint = (0, 0)
switch somePoint {
    case (0,0):
        print("Point is in the origin")
    case (_,0):
        print("Point is in the x axis")
    case (0,_):
        print("Point is in the y axis")
    case (-2...2, -2...2):
        print("Point is in the 4x4 rect")
    default:
        print("Point is some where")
}

let anotherPoint = (2,32)
switch anotherPoint{
    case (0,0):
        print("Point is in the origin")
    case (let x, 0):
        print("Point is in th x axis. x = \(x)")
    case (0, let y):
        print("Point is in th x axis. y = \(y)")
    case let(x, y) where x == y:
        print("Point is in a diagonal x = \(x), y = \(y)")
    case let(x, y) where x == -y:
        print("Point is in a diagonal x = \(x), y = \(y)")
    case let(x, y):
        print("Point is in other place: x = \(x), y = \(y)")
}

// Compose cases
let anotherCharacter: Character = "1"
switch anotherCharacter{
    case "a", "e", "i", "o", "u":
        print("This character is a vowel")
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "w", "x", "y", "z", "ñ":
        print("This character is a consonant")
    default:
        print("This character is not a vowel and nor a consonant")
}

let stillAnotherPoint = (9,0)
switch anotherPoint{
    case (let distance,0), (0, let distance):
        print("Point is in the origin and its distance is \(distance)")
    default:
        print("Point is not in any axis")
}