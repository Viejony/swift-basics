// Escaping closures: @escaping
var x = 1
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping() -> Void){
    completionHandlers.append(completionHandler)
}

print("completionHandlers.count = \(completionHandlers.count)")
someFunctionWithEscapingClosure{
    x = 2
}
someFunctionWithEscapingClosure{
    x = 3
}
print("completionHandlers.count = \(completionHandlers.count)")

print("x = \(x)")
completionHandlers.first?()
print("x = \(x)")
completionHandlers.last?()
print("x = \(x)")