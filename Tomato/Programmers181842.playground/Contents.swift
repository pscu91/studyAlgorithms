import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    if str2.contains(str1) == true {
        return 1
    } else {
        return 0
    }
}
