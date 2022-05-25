// Optional Chaining examples

class Person{
    var name: String
    var residence: Residence?

    init(name: String){
        self.name = name
    }
}

class Residence{
    var rooms = [Room]()
    var address: Address?
    var numberOfRooms: Int{
        return rooms.count
    }

    subscript(i: Int) -> Room{
        get{
            return rooms[i]
        }
        set{
            rooms[i] = newValue
        }
    }

    func printNumberOfRooms(){
        print("Residence has \(rooms.count) rooms")
    }
}

class Room{
    let name: String
    
    init(name: String){
        self.name = name
    }

}

class Address{
    var buildingName: String?
    var buildingNumber: String?
    var street: String?

    func buildingIdentifier() -> String?{
        if let buildingNumber = buildingNumber, let street = street{
            return "\(buildingNumber), \(street)"
        }
        else if buildingName != nil{
            return buildingName
        }
        else{
            return nil
        }
    }
}

func createAddress() -> Address{
    print("Create address called")
    let someAddress = Address()
    someAddress.buildingNumber = "13"
    someAddress.street = "Fake Street"
    return someAddress
}

func checkResidence(person: Person){
    if let roomCount = person.residence?.numberOfRooms{
        print("\(person.name) residence has \(roomCount) rooms")
    }
    else{
        print("\(person.name) has no residence")
    }
}

let edgar = Person(name: "Edgar")
checkResidence(person: edgar)

let someAddress = Address()

// If residence is nil, code is not executed
edgar.residence?.address = createAddress()
checkResidence(person: edgar)
edgar.residence?.printNumberOfRooms()

// If residence is nil, the code can't assign the address
if(edgar.residence?.address = createAddress()) != nil{
    print("\(edgar.name)'s residence was configured")
}else{
    print("\(edgar.name)'s residence is not configured")
}

// If residence is nil, code below can't gat any room
if let firstRoomName = edgar.residence?[0].name {
    print("First room is \(firstRoomName)")
}else{
    print("We can't get rooms")
}

// Residence subscript is not altered because is nil
edgar.residence?[0] = Room(name: "Bathroom")

// Adding the residence: now residence optional works
let edgarHouse = Residence()
edgarHouse.rooms.append(Room(name: "Kitchen"))
edgarHouse.rooms.append(Room(name: "Bathroom"))
edgarHouse.rooms.append(Room(name: "Bedroom"))
edgar.residence = edgarHouse
edgar.residence?.printNumberOfRooms()

// Multiple optional chaining
if let edgarStreet = edgar.residence?.address?.street{
    print("\(edgar.name)'s street is \(edgarStreet)")
}else{
    print("\(edgar.name)'s street is not assigned")
}

// Defining address values
edgar.residence?.address = createAddress()
if let buildingIdentifier = edgar.residence?.address?.buildingIdentifier(){
    print("\(edgar.name)'s building is \(buildingIdentifier)")
}

if let _ = edgar.residence?.address?.buildingIdentifier()?.hasPrefix("13"){
    print("\(edgar.name)'s building has 13 in its name")
}