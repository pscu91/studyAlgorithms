import Foundation

func solution(_ num_list:[Int]) -> Int {
    for i in num_list {
        if i < 0 {
            return num_list.firstIndex(of: i)!
        }
    }
    return -1
}
