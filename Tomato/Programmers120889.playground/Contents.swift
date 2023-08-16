import Foundation

func solution(_ sides:[Int]) -> Int {
    var sortArr = sides.sorted(by: >)
    var maxValue = sortArr[0]
    var remainSumValue = sortArr[1] + sortArr[2]
    
    if maxValue < remainSumValue {
        return 1
    } else {
        return 2
    }
}
