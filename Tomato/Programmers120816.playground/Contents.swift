import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    var result: Int = n % slice
    var div: Int = n / slice
    
    if result > 0 {
        return div + 1
    } else if result == 0 {
        return div
    } else {
        return 0
    }
}
