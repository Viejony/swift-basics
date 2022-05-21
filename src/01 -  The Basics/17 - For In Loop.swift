// For In
let names = ["Richard", "Joseph", "Edge"]
for name in names{
    print(name, terminator: ", ")
}

print()
print()
let dic = ["spider":8, "ant":6, "dog":4]
for (key, value) in dic {
    print("animal = \(key), legs = \(value)")
}

print()
for idx in 0...5{
    print("\(idx) = \(idx * 3)")
}

print()
let base = 2
let power = 10
var answer = 1
for _ in 1..<power{
    answer *= base
    print(answer)
}

print()
let hour = 13
let minutes = 60
for  tickMark in 0..<minutes{
    print("\(hour):\(tickMark)", terminator: ", ")
}

print()
print()
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(tickMark)", terminator: ", ")
}