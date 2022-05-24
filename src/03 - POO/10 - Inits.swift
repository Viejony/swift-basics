// Class inits

struct Fahrenheit{
    var temperature: Double

    init(){
        self.temperature = 32
    }

}

struct Celsius{
    var temperature: Double

    init(){
        self.temperature = 32
    }

    init(fromFahrenheit fahrenheit: Double){
        self.temperature = (fahrenheit - 32) / 1.8
    }

    init(fromKelvin kelvin: Double){
        self.temperature = kelvin - 273.15
    }

    init(_ celsius: Double){
        self.temperature = celsius
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)

print(boilingPointOfWater.temperature)
print(freezingPointOfWater.temperature)



////////////////
struct Color{
    let red, green, blue: Double

    init(red: Double, green: Double, blue: Double){
        self.red = red
        self.green = green
        self.blue = blue
    }

    init(_ red: Double, _ green: Double, _ blue: Double){
        self.red = red
        self.green = green
        self.blue = blue
    }

    init(white: Double){
        self.red = white
        self.green = white
        self.blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGray = Color(white: 0.5)
let green = Color(1, 0, 0)