import Foundation

func solution(_ num_list:[Int], _ n:Int) -> Int {
    if num_list.contains(n) == true {
        return 1
    } else {
        return 0
    }
}
