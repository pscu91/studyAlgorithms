import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var result = array.filter { $0 == n }
    
    return result.count
}
