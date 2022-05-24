// Type properties for structs, enums and classes
struct SomeStruct{
    static var storedTypeProp: Int = 55
    static var computedTypeProp: Int{
        return 1
    }

    var counter = 47
}

enum SomeEnum{
    static var storedTypeProp: Int = 55
    static var computedTypeProp: Int{
        return 1
    }
    case A, B
}

class SomeClass{
    static var storedTypeProp: Int = 55
    static var computedTypeProp: Int{
        return 1
    }
    class var overrideableComputedTypeProp: Int{
        return 19
    }
}

var str = SomeStruct()
print(SomeStruct.storedTypeProp)
print(str.counter)



