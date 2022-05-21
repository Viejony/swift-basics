// Dictionaries

let dict = [1:"Hello", 2:"World"]
print(dict)

var namesOfintegers = [Int: String]()
namesOfintegers[15] = "Fifteen"
print(namesOfintegers)
namesOfintegers = [:]
print(namesOfintegers)

var airports: [String:String] = ["YYZ":"Toronto", "DUB":"Dublin", "PMI":"Palma de Mallorca"]
print(airports.count)
print("airports is empty = \(airports.isEmpty)")

// Access with Nil
print(airports["YYZ"] ?? "NONE")
print(airports["ABC"] ?? "NONE")

// Access with if
print()
if let val = airports["YYZ"]{
    print("key = YYZ,  val = \(val)")
}

// Update value
print()
if let key = airports.updateValue("Dublin airport XXX", forKey: "DUB"){
    print("Updated key. old = \(key)")
}
print(airports)


// Deleting a pair
print()

airports["YYZ"] = nil

if let remove = airports.removeValue(forKey: "DUB"){
    print("Removed \(remove)")
}
print("After remove elements: airports = \(airports)")


// Adding elements
print()
airports["YYZ"] = "Toronto"
airports["DUB"] = "Dublin"
print("After adding elements: airports = \(airports)")

// Loops
print()
for (key, value) in airports{
    print("key = \(key), value = \(value)")
}

print("\nKeys: ", terminator: "")
for key in airports.keys{
    print("\(key)", terminator: ", ")
}
print()

print("\nValues: ", terminator: "")
for value in airports.values{
    print("\(value)", terminator: ", ")
}
print()

//  Arrays
let airportKeys = [String](airports.keys)
let airportValues = [String](airports.values)

print("\nKeys: \(airportKeys)")
print("\nValues: \(airportValues)")