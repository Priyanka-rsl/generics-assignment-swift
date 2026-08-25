// Problem 8.1: Opaque Type using some

func makeSequence(from n: Int) -> some Sequence<Int>{
    return 1...n
}
// Input:
// n = 10
//
// Output:
// Sequence: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
