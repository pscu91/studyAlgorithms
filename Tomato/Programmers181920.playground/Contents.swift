import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    var resultArr:[Int] = []
    
    for i in start_num ... end_num {
        resultArr.append(Int(i))
    }
    
    return resultArr
}
