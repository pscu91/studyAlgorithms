import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var resultArr:[Int] = []
    
    for i in arr {
        if i % 2 == 0 && i >= 50 {
            resultArr.append(Int(Int(i) / 2))
        } else if i % 2 == 1 && i <= 50 {
            resultArr.append(Int(Int(i) * 2))
        } else {
            resultArr.append(Int(i))
        }
    }
    
    return resultArr
}
