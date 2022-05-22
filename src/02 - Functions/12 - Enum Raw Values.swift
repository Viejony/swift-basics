// Raw Values
enum ASCIIControlCharacter: Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

enum Planets: Int{
    case mercury = 1, venus, earth, mars, jupyter, saturn, uranus, neptune, pluto
}

print("Mercury = \(Planets.mercury.rawValue)")
print("Neptune = \(Planets.neptune.rawValue)")


if let planet = Planets(rawValue: 5){
    print("Planet 5 = \(planet)")
}

