// Problem 8.2: Existential Type using any

protocol Animal {
    func describe() -> String
}

struct Dog: Animal {
    func describe() -> String {
        return "Dog: Woof!"
    }
}

struct Cat: Animal {
    func describe() -> String {
        return "Cat: Meow!"
    }
}

struct Bird: Animal {
    func describe() -> String {
        return "Bird: Chirp!"
    }
}

// Input:
// Dog, Cat, Bird
//
// Output:
// Dog: Woof!
// Cat: Meow!
// Bird: Chirp!
