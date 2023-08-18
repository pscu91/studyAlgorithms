import Foundation

func solution(_ my_string:String) -> Int {
    var numString = my_string.filter({ $0.isNumber })
    var result:Int = 0
    
    for i in numString {
        result += Int(String(i))!
    }
    
    return result
}
