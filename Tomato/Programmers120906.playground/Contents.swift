import Foundation

func solution(_ n:Int) -> Int {
    var splitInt = String(n).map { Int(String($0))! }
    var result:Int = 0
    
    splitInt.map{result += $0}
    
    return result
}
