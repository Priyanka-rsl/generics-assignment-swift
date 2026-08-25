struct Point<T: FloatingPoint> {
    
    var x: T
    var y: T
    
    func distance(to other: Point<T>) -> T {
        let dx = x - other.x
        let dy = y - other.y
        
        return (dx * dx + dy * dy).squareRoot()
    }
}

// Input:
// Point 1: (0.0, 0.0)
// Point 2: (3.0, 4.0)
//
// Output:
// Distance: 5.0
