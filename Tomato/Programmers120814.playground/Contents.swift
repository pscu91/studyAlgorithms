import Foundation

func solution(_ n:Int) -> Int {
    var rest: Int = n % 7
    
    if rest > 0 {
        return (n / 7) + 1
    } else if rest == 0 {
        return n / 7
    } else {
        return 0
    }
}
