import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    var sCount = is_suffix.count
    var sameCountString = my_string.suffix(sCount)
    
    if sameCountString == is_suffix {
        return 1
    } else {
        return 0
    }
}
