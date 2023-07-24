import Foundation

func solution(_ numbers:[Int]) -> Double {
    var result: Int = 0
    
    for element in numbers {
        result += element
    }
    
    return Double(result) / Double(numbers.count)
}
