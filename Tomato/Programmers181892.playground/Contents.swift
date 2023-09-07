import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    let arrCount:Int = num_list.count
    
    return [Int](num_list[n-1..<arrCount])
}
