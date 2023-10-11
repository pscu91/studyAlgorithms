import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var result:Int = n
    
    for i in control {
        if i == "w" {
            result = result + 1
        } else if i == "s" {
            result = result - 1
        } else if i == "d" {
            result = result + 10
        } else if i == "a" {
            result = result - 10
        }
    }
    
    return result
}
