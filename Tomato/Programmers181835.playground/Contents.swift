import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    
    if k % 2 == 1 {
        return arr.map{$0 * k}
    } else {
        return arr.map{$0 + k}
    }
}
