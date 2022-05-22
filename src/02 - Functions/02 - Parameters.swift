// No parameters function
func sayHelloWorld() -> String{
    return "Hello world"
}
print(sayHelloWorld())

// Multiple parameters
func greeting(person: String, isMale: Bool) -> String{
    if isMale{
        return "Welcome sir \(person)"
    }else{
        return "Welcome miss \(person)"
    }
}
print(greeting(person: "Lola", isMale: false))
print(greeting(person: "Lalo", isMale: true))



