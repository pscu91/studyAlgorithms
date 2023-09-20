import Foundation

func solution(_ my_string:String, _ k:Int) -> String {
    var resultString:String = ""
    
    for i in 1...k {
        resultString += my_string
    }
    
    return resultString
}
