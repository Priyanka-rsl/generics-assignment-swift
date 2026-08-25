// Problem 6.2: Binary Search using where clause

func binarySearch<T>(_ array: [T],target: T) -> Int? where T: Comparable {
    
    var low = 0
    var high = array.count - 1
    
    while low <= high {
        
        let middle = (low + high) / 2
        
        if array[middle] == target {
            return middle
        } else if array[middle] < target {
            low = middle + 1
        } else {
            high = middle - 1
        }
    }
    
    return nil
}

// Input:
// Sorted Array: [10, 20, 30, 40, 50]
// Target: 30
//
// Sorted Array: [10, 20, 30, 40, 50]
// Target: 35
//
// Output:
// Index of 30: 2
// Index of 35: -1
