// Param labels and default param values
func someFunc(f1 firstParamName: Int, f2 secondParamName: Int = 6){
    print(firstParamName + secondParamName)
}
someFunc(f1: 5, f2: 3)
someFunc(f1: 10)

func someFunc(_ person: String, from hometown: String){
    print("Hello \(person) from ")
}
someFunc("Albert", from: "Berlin")

// Variadics: any number of params
func mean(_ numbers: Double...) -> Double{
    var total: Double = 0
    for n in numbers{
        total += n
    }
    return total / Double(numbers.count)
}
print(mean(1,2,3,5))
print(mean(1.1, 2.2, 3.3, 4.4, 5.5))