import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    if let range = str1.range(of: str2, options: .backwards) {
        return 1
    } else {
        return 2
    }
}
