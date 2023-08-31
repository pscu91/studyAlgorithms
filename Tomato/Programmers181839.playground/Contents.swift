import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var aValue = a % 2
    var bValue = b % 2
    
    if aValue == 1 && bValue == 1 {
        return (a * a) + (b * b)
    } else if aValue == 1 || bValue == 1 {
        return 2 * (a + b)
    } else if aValue == 0 && bValue == 0 {
        if (a - b) < 0 {
            return -(a - b)
        } else {
            return a - b
        }
    } else {
        return 0
    }
}
