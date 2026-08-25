// Problem 7.2: Container Protocol
// Updated in Problem 8.4 with Primary Associated Type

protocol Container<Item> {
    associatedtype Item
    
    mutating func add(_ item: Item)
    mutating func remove(at index: Int) -> Item
    subscript(index: Int) -> Item { get }
    
    var count: Int { get }
}


struct IntContainer: Container {
    
    private var items: [Int] = []
    
    mutating func add(_ item: Int) {
        items.append(item)
    }
    
    mutating func remove(at index: Int) -> Int {
        return items.remove(at: index)
    }
    
    subscript(index: Int) -> Int {
        return items[index]
    }
    
    var count: Int {
        return items.count
    }
}


// Input:
// Add: 10, 20, 30
//
// Output:
// Items: 10 20 30
