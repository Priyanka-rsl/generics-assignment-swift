// Problem 5.2: Dot Product

func dotProduct<T: Numeric>(_ first: [T], _ second: [T]) -> T {
    
    precondition(
        first.count == second.count,
        "Arrays must have the same length"
    )
    
    var result: T = 0
    for index in 0..<first.count {
        result += first[index] * second[index]
    }
    
    return result
}
// Input:
// First Array: [1, 2, 3]
// Second Array: [4, 5, 6]
// First Array: [1.5, 2.0]
// Second Array: [2.0, 3.0]
//
// Output:
// Dot Product: 32
// Double Dot Product: 9.0
