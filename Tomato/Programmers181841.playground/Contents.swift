import Foundation

func solution(_ str_list:[String], _ ex:String) -> String {
    var answer:String = ""
    
    for s in str_list {
        if s.contains(ex) == false {
            answer += s
        } else {
            answer += ""
        }
    }
    
    return answer
}
