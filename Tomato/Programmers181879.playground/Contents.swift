import Foundation

func solution(_ num_list:[Int]) -> Int {
    var sumResult = 0
    var multiResult = 1
    
    if num_list.count >= 11 {
        for i in num_list {
            sumResult += Int(i)
        }
        return sumResult
    } else {
        for i in num_list {
            multiResult *= Int(i)
        }
        return multiResult
    }
}
