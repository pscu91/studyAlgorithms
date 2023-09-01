import Foundation

func solution(_ my_string:String, _ is_prefix:String) -> Int {
    var sCount = is_prefix.count
    var SameCountString = my_string.prefix(sCount)
    
    if SameCountString == is_prefix {
        return 1
    } else {
        return 0
    }
}
