// Inheritance

class Vehicle{
    var currentSpeed = 0.0
    var description: String{
        return "Traveling at \(currentSpeed) km/h"
    }

    func makeNoise(){
        print("... nothing")
    }
}

class Bicycle: Vehicle{
    var hasBasket = false

    override func makeNoise(){
        print("Ring Ring")
    }
}

class Tandem: Bicycle{
    var currentNumberOfPassenger = 0
}

class Train: Vehicle{
    var numberOfWagons = 0

    override func makeNoise(){
        print("Choo chooo")
    }
}

class Car: Vehicle{
    var gear = 1
    override var description: String{
        return super.description + " in gear \(self.gear)"
    }
}

class AutomaticCar: Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 15.0) + 1
        }
    }
    override var description: String{
        return super.description + " in gear \(self.gear)"
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

let someBicycle = Bicycle()
someBicycle.currentSpeed = 15.0
print(someBicycle.description)

let tandem = Tandem()
tandem.currentSpeed = 22.0
tandem.hasBasket = true
tandem.currentNumberOfPassenger = 3
print(someBicycle.description)
tandem.makeNoise()

let train = Train()
train.makeNoise()

let car = Car()
print(car.description)

let automaticCar = AutomaticCar()
automaticCar.currentSpeed = 35
print(automaticCar.description)