// Problem 4.2: Generic MyResult
enum MyResult<Success, Failure: Error>{
    case sucess(Success)
    case failure(Failure)
    
    func map<T>(_ transform: (Success) -> T ) -> MyResult<T , Failure>{
        
        switch self{
        case .sucess(let value):
            return .sucess(transform(value))
            
        case .failure(let error):
            return .failure(error)
        }
        
    }
}

enum SampleError: Error {
    case somethingWentWrong
}

// Input:
// MyResult.success(10)
// Map operation: Transform 10 to "Number: 10"
// MyResult.failure(.somethingWentWrong)
//
// Output:
// success("Number: 10")
// failure(somethingWentWrong)
