func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    
    // Base case: an array with 0 or 1 element is already sorted
    guard array.count > 1 else {
        return array
    }
    // Find the middle
    let middle = array.count / 2
    
    // Divide the array into two halves
    let left = Array(array[..<middle])
    let right = Array(array[middle...])
    
    // Recursively sort both half
    let sortedLeft = mergeSort(left)
    let sortedRight = mergeSort(right)
    
    // Merge the two sorted half
    return merge(sortedLeft, sortedRight)
}

private func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    
    var result: [T] = []
    var leftIndex = 0
    var rightIndex = 0
    
    // Compare elements from both arrays
    while leftIndex < left.count && rightIndex < right.count {
        
        if left[leftIndex] <= right[rightIndex] {
            result.append(left[leftIndex])
            leftIndex += 1
        } else {
            result.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    // Add remaining elements from left
    while leftIndex < left.count {
        result.append(left[leftIndex])
        leftIndex += 1
    }
    
    // Add remaining elements from right
    while rightIndex < right.count {
        result.append(right[rightIndex])
        rightIndex += 1
    }
    return result
}

// Input:
// Integer Array: [5, 2, 8, 1, 3]
// String Array: ["Sahil", "Mohan", "Amit"]
//
// Output:
// Sorted Integer Array: [1, 2, 3, 5, 8]
// Sorted String Array: ["Amit", "Mohan", "Sahil"]
