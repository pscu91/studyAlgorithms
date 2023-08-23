import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    
    return (0...n-1).map{num_list[$0]}
}
