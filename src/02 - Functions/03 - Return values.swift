// No return values
func greet2(person: String){
    print("Hello \(person)")
}
greet2(person: "Jimi")

// Functions that returns a int
func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
let x = printAndCount(string: "My name is Rock")
print(x)

// Using tuples
func minMax(array: [Int]) -> (min: Int, max: Int)?{
    var currentMin = array[0]
    var currentMax = array[0]

    if array.isEmpty{
        return nil
    }

    for value in array{
        if value < currentMin{
            currentMin = value
        }
        if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [5, 6, 7, 1, 3, -5])
if bounds != nil{
    print("min = \(bounds!.min), max = \(bounds!.max)")
}