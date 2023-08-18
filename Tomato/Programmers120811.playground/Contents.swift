import Foundation

func solution(_ array:[Int]) -> Int {
    var sortArr = array.sorted(by: <)
    var centerValue = (array.count / 2)
    
    return sortArr[centerValue]
}
