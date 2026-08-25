
class Cache<Key: Hashable, Value> {
    
    private let capacity: Int
    private var storage: [Key: Value] = [:]
    private var usageOrder: [Key] = []
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    // Add or update a value in the cache
    func set(_ value: Value, for key: Key) {
        
        // If key already exists, remove its old position
        if storage[key] != nil {
            usageOrder.removeAll { $0 == key }
        }
        
        // Store the new value
        storage[key] = value
        
        // Mark this key as most recently used
        usageOrder.append(key)
        
        // If capacity is exceeded, remove least recently used item
        if usageOrder.count > capacity {
            let leastRecentlyUsedKey = usageOrder.removeFirst()
            storage.removeValue(forKey: leastRecentlyUsedKey)
        }
    }
    
    // Retrieve a value from the cache
    func get(_ key: Key) -> Value? {
        
        guard let value = storage[key] else {
            return nil
        }
        
        // Move the accessed key to the most recently used position
        usageOrder.removeAll { $0 == key }
        usageOrder.append(key)
        
        return value
    }
    
    // Returns the current number of items in the cache
    var count: Int {
        return storage.count
    }
}

// Input:
// Cache capacity: 3
// A = 100
// B = 200
// C = 300
// Access A
// Add D = 400
//
// Output:
// A: 100
// B: Not Found
// C: 300
// D: 400
// Cache Count: 3
