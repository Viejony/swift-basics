// Stored properties in a struct
struct FixedLengthRange{
    var firstValue: Int
    var length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print(rangeOfThreeItems.firstValue)

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)


// Lazy properties
class DataImporter{
    var filename = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter() // This property will be created until its necessary
    var data = [String]()
}

let dataManager = DataManager()
dataManager.data.append("Hello")
dataManager.data.append("world")


// Computed properties: variables calculated by any algorithm
struct Point{
    var x = 0.0, y = 0.0
}

struct Size{
    var width = 0.0, height = 0.0
}

struct Rect{
    var origin = Point()
    var size = Size()
    var center: Point{
        get{
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
    }
}

var square = Rect(
    origin: Point(x: 1.74, y: 12.19),
    size: Size(width: 10.0, height: 10.0))

let initialCenter = square.center
square.origin = Point(x: 14, y: 14)
let finalCenter = square.center

print("Initial center: x = \(initialCenter.x), y = \(initialCenter.y)")
print("Final center: x = \(finalCenter.x), y = \(finalCenter.y)")


// Only Read computed property
struct Cuboid{
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double{
        return width * height * depth
    }
}

var cube = Cuboid(width: 4, height: 5, depth: 2)
print("Cube volume = \(cube.volume)")
