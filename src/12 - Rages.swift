
for i in 1...5{
    print("close: i = \(i)")
}

for i in 1..<5{
    print("open: i = \(i)")
}

let names = ["Lola", "Pala", "Lopo", "mopa"]
for i in 0..<names.count{
    print("name \(i) = \(names[i])")
}

for i in names[1...]{
    print("name2 \(i)")
}

for i in names[..<2]{
    print("name3 \(i)")
}

let a = 10
let b = 20
let range = a...b
for i in range{
    print("range i = \(i)")
}
