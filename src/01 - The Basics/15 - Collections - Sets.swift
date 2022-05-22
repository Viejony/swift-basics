// Sets
var letters = Set<Character>()
print(letters.count)

letters.insert("a")
letters.insert("h")
letters.insert("x")
letters.insert("w")
print(letters)
print(letters.count)

// Remover 
if let v = letters.remove("b"){
    print("Element removed \(v)")
}else{
    print("Cant remove the element")
}

if letters.contains("a"){
    letters.remove("a")
}
print(letters)


// Iteración
for i in letters{
    print(i, terminator: ", ")
}

print()
for i in letters.sorted(){
    print(i, terminator: ", ")
}


// Insertar elementos repetidos
letters.insert("w")
letters.insert("w")
letters.insert("w")
letters.insert("w")
print()
print(letters)


// Operaciones con conjuntos
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [2,4,6,8]
let primeDigits: Set = [2,3,5,7]

// Union
print(oddDigits.union(evenDigits).sorted())

//Intersección
print(oddDigits.intersection(primeDigits).sorted())

// A - B
print(oddDigits.subtracting(primeDigits).sorted())

// Diferencia simétrica: A-B union B-A
print(oddDigits.symmetricDifference(primeDigits).sorted())

