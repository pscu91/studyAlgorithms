import Foundation

func solution(_ dot:[Int]) -> Int {
    var x = dot[0]
    var y = dot[1]
    
    if x > 0 && y > 0 {
        return 1
    } else if x < 0 && y > 0 {
        return 2
    } else if x < 0 && y < 0 {
        return 3
    } else if x > 0 && y < 0 {
        return 4
    } else {
        return 0
    }
}
