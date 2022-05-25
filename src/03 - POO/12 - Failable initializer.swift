// Failable initializer

enum Temperature{
    case kelvin, farenheit, celsius

    init?(symbol: Character){
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .farenheit
        default:
            return nil
        }
    }
}

let someTemp = Temperature(symbol: "K")
if someTemp != nil{
    print(someTemp!)
}


////////////////////////
class Product{
    let name: String
    init?(name: String){
        if(name.isEmpty){
            return nil
        }
        self.name = name
    }
}

class CarItem: Product{
    let quantity: Int
    init?(name: String, quantity: Int){
        if quantity < 1{
            return nil
        }
        self.quantity = quantity
        super.init(name: name)
    }
}

if let someSocks = CarItem(name: "Socks", quantity: 2){
    print("\(someSocks.name) - \(someSocks.quantity)")
}

if let someGuns = CarItem(name: "Socks", quantity: -2){
    print("\(someGuns.name) - \(someGuns.quantity)")
}