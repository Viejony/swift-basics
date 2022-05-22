// Enums
enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planets{
    case mercury, venus, earth, mars, jupyter, saturn, uranus, neptune, pluto
}

var dir: CompassPoint = CompassPoint.north
print(dir)

var planet = Planets.jupyter
print(planet)
planet = .mercury
print(planet)


switch dir{
    case .north:
        print("Go to North")
    case .south:
        print("To south park...")
    case .east:
        print("To Japan, bitch")
    case .west:
        print("Go to ... cowboys!!")
}

enum Beverages: CaseIterable{
    case milk, tea, beer, coffe, juice
}
for beverage in Beverages.allCases{
    print(beverage)
}


// Example: Barcodes
enum Barcode{
    case upc(Int, Int, Int, Int)
    case qr(String)
}
var productBarCode = Barcode.upc(1, 5887, 78783, 3)
print(productBarCode)
productBarCode.qr("ASASDASVCC")
print(productBarCode)
