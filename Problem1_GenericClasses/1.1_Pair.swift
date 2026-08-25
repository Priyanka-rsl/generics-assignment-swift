class Pair<First, Second> {
    
    private var first: First
    private var second: Second
    
    init(first: First, second: Second) {
        self.first = first
        self.second = second
    }
    
    func setFirst(_ value: First) {
        first = value
    }
    
    func setSecond(_ value: Second) {
        second = value
    }
    
    func getFirst() -> First {
        return first
    }
    
    func getSecond() -> Second {
        return second
    }
}

// Input:
// Pair(first: "John", second: 25)
// Updated first value to "John wil"
// Updated second value to 26
//
// Output:
// First: John
// Second: 25
// After Update - First: John wil
// After Update - Second: 26
