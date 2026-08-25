// Problem 6.1: Contains using where clause

func containsElement<T>(_ array: [T],_ element: T) -> Bool where T: Equatable {
    
    for value in array {
        if value == element {
            return true
        }
    }
    
    return false
}


// Input:
// Array: [10, 20, 30]
// Element to search: 20
//
// Array: ["Apple", "Swift", "iOS"]
// Element to search: "Genrics"
//
// Output:
// Contains 20: true
// Contains Genrics: false
