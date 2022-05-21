// Arrays
var someInts = [Int]()
print(someInts.count)
someInts.append(31)
print(someInts.count)

someInts = [] // Inicialización sencilla

var someDoubles = Array(repeating: 3.141596, count: 3)
print(someDoubles)

var moreDoubles = Array(repeating: 2.5, count: 3)
var aLotOfDoubles = someDoubles + moreDoubles
print(aLotOfDoubles)

    // Inferencia automática
var shoppingList = ["Soap", "Toillets", "Papper for my ass"]
print(type(of: shoppingList))


    // Empty array
if(shoppingList.isEmpty){
    print("The array is empty")
}else{
    print("The array contains elements")
}

//Agregar ekementos
shoppingList.append("Gray Cats")
shoppingList += ["Black Dogs", "Blue birds"]
print(shoppingList)

    // Accediendo a elementos
let firstElement = shoppingList[0]
print(firstElement)
shoppingList[0] = "Shampoo"
print(shoppingList[0]) 

    // Usando rangos
shoppingList[0...2] = ["Froyo", "Bags", "Papper for anything"]
print(shoppingList)

    // Eliminar elementos
let deleted = shoppingList.remove(at: 2)
print(shoppingList)

shoppingList.removeLast()
print(shoppingList)

    // Iteración
for item in shoppingList{
    print(item, terminator: ", ")
}

for (index, item) in shoppingList.enumerated(){
    print("\(index) = \(item)")
}
