import Foundation

func solution(_ n:Int) -> [Int] {
    var oddNumArr:Array<Int> = []
    
    for i in 1...n {
        if i % 2 == 1 {
            oddNumArr.append(Int(i))
        }
    }
    
    return oddNumArr
}
