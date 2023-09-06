import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var stringArr:[String] = []
    var resultString = ""
    
    for i in my_string {
        stringArr.append(String(i))
    }
    
    for i in index_list {
        resultString += stringArr[Int(i)]
    }
    
    return resultString
}
