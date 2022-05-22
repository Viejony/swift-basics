// Capturing closures: a nested function that captures variables in its scope

func makeIncrementer(forIncrement amount: Int) -> () -> Int{
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementerByTen = makeIncrementer(forIncrement: 10)
print(incrementerByTen())
print(incrementerByTen())
print(incrementerByTen())

let incrementerByThree = makeIncrementer(forIncrement: 3)
print(incrementerByThree())
print(incrementerByThree())
print(incrementerByThree())