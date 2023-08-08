import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sortArr = numbers.sorted(by: >)
    
    var maxValue = sortArr[0]
    var max2ndValue = sortArr[1]
    
    return maxValue * max2ndValue
}
