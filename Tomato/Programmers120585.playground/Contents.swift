import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    var tallGuys = array.filter{ $0 > height }
    
    return tallGuys.count
}
