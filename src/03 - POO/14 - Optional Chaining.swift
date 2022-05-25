// Optional Chaining

class Person{
    var residence: Residence?
}

class Residence{
    var numberOfRooms: Int = 1
}

let edgar = Person()
if let roomCount = edgar.residence?.numberOfRooms{
    print("Edgar residence has \(roomCount) rooms")
}
else{
    print("Edgar has no residence")
}

edgar.residence = Residence()
if let roomCount = edgar.residence?.numberOfRooms{
    print("Edgar residence has \(roomCount) rooms")
}
else{
    print("Edgar has no residence")
}