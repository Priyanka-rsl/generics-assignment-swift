import Foundation

////print("Hello, World!")
print("\n========== PROBLEM 1: GENERIC CLASSES ==========\n")

//1.1Problem1

print("---------- 1.1 Pair ----------")

let person = Pair(first: "John", second: 25)

print("First:", person.getFirst())
print("Second:", person.getSecond())

person.setFirst("John wil")

person.setSecond(26)

print("After Update - First:", person.getFirst())
print("After Update - Second:", person.getSecond())


//1.2_Cache

print("\n---------- 1.2 Cache (LRU) ----------")

let cache = Cache<String, Int>(capacity: 3)

cache.set(100, for: "A")
cache.set(200, for: "B")
cache.set(300, for: "C")

print("A:", cache.get("A") ?? "Not Found")

// A was accessed most recently.

// Add D → B should be removed because B is now the least recently used.

cache.set(400, for: "D")

print("A:", cache.get("A") ?? "Not Found")
print("B:", cache.get("B") ?? "Not Found")
print("C:", cache.get("C") ?? "Not Found")
print("D:", cache.get("D") ?? "Not Found")
print("Cache Count:", cache.count)



print("\n========== PROBLEM 2: GENERIC STRUCTS ==========\n")

//2.1 Point<T>

print("---------- 2.1 Point<T> ----------")

let point1 = Point<Double>(x: 0.0, y: 0.0)
let point2 = Point<Double>(x: 3.0, y: 4.0)
let distance = point1.distance(to: point2)

print("Distance:", distance)


//2.2_LinkedList

print("\n---------- 2.2 LinkedList ----------")

var numbers = LinkedList<Int>()

//Insert

numbers.insert(10)
numbers.insert(20)
numbers.insert(30)

//print

print("Linked List: ")

numbers.printList()

//Search

print("Contains 10: ", numbers.contains(10))

print("Contains 2: ", numbers.contains(2))

//Delete

numbers.delete(30)

print("After deleting 30: ", numbers.printList())



print("\n========== PROBLEM 3: GENERIC FUNCTIONS ==========\n")

//3.1

print("---------- 3.1 printArray ----------")

printArray([1,2,3])

printArray(["Genrics", "Swift", "iOS"])

//3.2

print("\n---------- 3.2 mergeSort ----------")

let unsortednumbers = [5, 2, 8, 1, 3]

let unsortednames = ["Sahil","Mohan","Amit"]

let sortedNumbers = mergeSort(unsortednumbers)

let sortedNames = mergeSort(unsortednames)

print("Original:", unsortednumbers)

print("Sorted:", sortedNumbers)

print("Unsorted names:", unsortednames)

print("Sorted names:", sortedNames)



print("\n========== PROBLEM 4: GENERIC ENUMS ==========\n")

//4.1

print("---------- 4.1 MyOptional ----------")

let optionalNumber: MyOptional<Int> = .some(10)

let mappedNumber = optionalNumber.map {

    "Number: \($0)"

}

print(mappedNumber)

let emptyOptional: MyOptional<Int> = .none

let mappedEmpty = emptyOptional.map {

    $0 * 2

}

print(mappedEmpty)


//4.2

print("\n---------- 4.2 MyResult ----------")

let sucesssResult: MyResult<Int, SampleError> = .sucess(10)

let mappedSucess = sucesssResult.map{

    "Number: \($0)"

}

print(mappedSucess)



let failureResult: MyResult<Int, SampleError> = .failure(.somethingWentWrong)

let mappedFailure = failureResult.map {

    "Number: \($0)"

}

print(mappedFailure)



print("\n========== PROBLEM 5: TYPE CONSTRAINTS ==========\n")

//5.1

print("---------- 5.1 Maximum ----------")

let maximumNumber = findMax([10,25,5,60,12])
print("Maximum =", maximumNumber ?? "No value")

let maximumString = findMax(["Apple", "Genrics", "Swift"])
print("Maximum =", maximumString ?? "No value")


//5.2

print("\n---------- 5.2 Dot Product ----------")

let dotProductResult = dotProduct([1, 2, 3], [4, 5, 6])
print("Dot Product:", dotProductResult)

let doubleDotProduct = dotProduct([1.5, 2.0], [2.0, 3.0])
print("Double Dot Product:", doubleDotProduct)



print("\n========== PROBLEM 6: WHERE CLAUSES ==========\n")

//6.1

print("---------- 6.1 Contains ----------")

let containsNumber = containsElement([10, 20, 30], 20)
print("Contains 20:", containsNumber)

let containsName = containsElement(["Apple", "Swift", "iOS"],"Genrics")
print("Contains Genrics:", containsName)

//6.2

print("\n---------- 6.2 Binary Search ----------")
let searchNumbers = [10, 20, 30, 40, 50]

let foundIndex = binarySearch(searchNumbers, target: 30)
print("Index of 30:", foundIndex ?? -1)

let missingIndex = binarySearch(searchNumbers, target: 35)
print("Index of 35:", missingIndex ?? -1)



print("\n========== PROBLEM 7: ASSOCIATED TYPES ==========\n")

//7.1

print("---------- 7.1 Displayable ----------")

let stringDisplay = StringDisplay()
stringDisplay.display("Welome to iOS")

let intDisplay = IntDisplay()
intDisplay.display(100)


//7.2

print("\n---------- 7.2 Container ----------")

var intContainer = IntContainer()

intContainer.add(10)
intContainer.add(20)
intContainer.add(30)

print("Items:", intContainer[0], intContainer[1], intContainer[2])
print("Count:", intContainer.count)

let removedItem = intContainer.remove(at: 1)
print("Removed:", removedItem)
print("Item at index 1:", intContainer[1])
print("Count after removal:", intContainer.count)



print("\n========== PROBLEM 8: MODERN SWIFT GENERICS ==========\n")

//8.1
print("---------- 8.1 some Sequence ----------")

let sequence = makeSequence(from: 10)
print("Sequene:", Array(sequence))


//8.2
print("\n---------- 8.2 any Animal ----------")

let animals: [any Animal] = [Dog(),Cat(),Bird()]

for animal in animals {

    print(animal.describe())

}


//8.3
print("\n---------- 8.3 some vs any Equatable ----------")

let someResult = equalsStoredValue(10)
print("some Equatable:", someResult)

let anyResult = equalsStoredValueAny("Swift")
print("any Equatable:", anyResult)


//8.4

print("\n---------- 8.4 Primary Associated Type ----------")

var sumContainer = IntContainer()

sumContainer.add(10)
sumContainer.add(20)
sumContainer.add(30)

let total = sum(sumContainer)

print("Sum:", total)



