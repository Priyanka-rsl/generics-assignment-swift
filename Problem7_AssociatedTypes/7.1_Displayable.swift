// Problem 7.1: Protocol with Associated Type

protocol Displayable {
    associatedtype Value
    
    func display(_ value: Value)
}

// Implementation 1: String
struct StringDisplay: Displayable {
    
    typealias Value = String
    
    func display(_ value: String) {
        print("String:", value)
    }
}

// Implementation 2: Int
struct IntDisplay: Displayable {
    
    typealias Value = Int
    
    func display(_ value: Int) {
        print("Integer:", value)
    }
}

// Input:
// StringDisplay: "Welome to iOS"
// IntDisplay: 100
//
// Output:
// String: Welome to iOS
// Integer: 100
