import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var resultValue:Int = 0
    
    for i in numbers {
        if resultValue <= n {
            resultValue += i
        }
    }
    
    return Int(resultValue)
}
