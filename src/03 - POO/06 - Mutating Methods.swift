// Mutating methods
struct Point{
    var x = 0.0, y = 0.0

    func isToTheRight(of x: Double) -> Bool{
        return self.x > x
    }

    mutating func moveBy(x deltaX: Double, y deltaY: Double){
        x += deltaX
        y += deltaY
    }

    mutating func moveByUltra(x deltaX: Double, y deltaY: Double){
        self = Point(x: self.x + deltaX, y: self.x + deltaY)
    }
}

var somePoint = Point(x: 4, y: 5)
print("x = \(somePoint.x), y = \(somePoint.y)")
print(somePoint.isToTheRight(of: 1))

somePoint.moveBy(x: 2, y: -3)
print("x = \(somePoint.x), y = \(somePoint.y)")

somePoint.moveBy(x: 5, y: 8)
print("x = \(somePoint.x), y = \(somePoint.y)")


// Enums

enum DifferentStateSwitch{
    case off, low, high
    mutating func next(){
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var controllerStatus = DifferentStateSwitch.off
controllerStatus.next()
print(controllerStatus)
controllerStatus.next()
print(controllerStatus)
controllerStatus.next()
print(controllerStatus)