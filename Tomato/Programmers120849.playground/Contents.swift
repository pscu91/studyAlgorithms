import Foundation

func solution(_ my_string:String) -> String {
    var restString = my_string.filter { !["a", "e", "i", "o", "u"].contains($0)}
    
    return restString
}
