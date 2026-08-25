// Problem 8.3: some Equatable vs any Equatable

// Version 1: some Equatable
func equalsStoredValue(_ value: some Equatable) -> Bool {
    let storedValue = value
    return value == storedValue
}


// Version 2: any Equatable
func equalsStoredValueAny(_ value: any Equatable) -> Bool {
    let storedValue: any Equatable = value
    return true
}


// When to use:
// some Equatable → represents one specific underlying Equatable type,
//                  while hiding the actual concrete type.
//
// any Equatable → can represent values of different concrete types,
//                 as long as they conform to Equatable.
