// Problem 8.4: Primary Associated Type

func sum(_ c: some Container<Int>) -> Int {
    
    var total = 0
    
    for index in 0..<c.count {
        total += c[index]
    }
    
    return total
}


// Input:
// Container: [10, 20, 30]
//
// Output:
// Sum: 60
