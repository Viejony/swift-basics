class Vehicle {
    var numberOfWheels = 0
    var description: String{
        return "\(numberOfWheels) wheels"
    }
}

class Bicycle: Vehicle{
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

class Hoverboard: Vehicle{
    var color: String
    init(color: String){
        self.color = color
        // here the super.init() is called implicitly
    }
    override var description: String{
        return "\(super.description) with the color \(self.color)"
    }
}

let vehicle = Vehicle()
print(vehicle.description)


let bicycle = Bicycle()
print(bicycle.description)

let hoverboard = Hoverboard(color: "Silver")
print(hoverboard.description)