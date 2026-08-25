// Problem 4.1: Generic MyOptional
enum MyOptional<Wrapped> {
    
    case some(Wrapped)
    case none
    
    func map<T>(_ transform: (Wrapped) -> T) -> MyOptional<T> {
        
        switch self {
        case .some(let value):
            return .some(transform(value))
            
        case .none:
            return .none
        }
    }
}

// Input:
// MyOptional.some(10)
// Map operation: Transform 10 to "Number: 10"
// MyOptional.none
//
// Output:
// some("Number: 10")
// none
