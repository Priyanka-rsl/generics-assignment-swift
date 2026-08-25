import Foundation

func findMax<T: Comparable>(_ array: [T]) -> T? {
    // Return nil if array is empty
    guard let maxValue = array.first else {
        return nil
    }
    
    var currentMax = maxValue
    
    for element in array.dropFirst() {
        if element > currentMax {
            currentMax = element
        }
    }
    
    return currentMax
}

// Input:
// Integer Array: [10, 25, 5, 60, 12]
// String Array: ["Apple", "Genrics", "Swift"]
//
// Output:
// Maximum Integer: 60
// Maximum String: Swift
