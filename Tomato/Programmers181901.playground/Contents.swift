import Foundation

func solution(_ n:Int, _ k:Int) -> [Int] {
    var resultArr:[Int] = []
    
    for i in 1...n {
        if (i * k) <= n {
            resultArr.append(i*k)
        }
    }
    
    return resultArr
}
