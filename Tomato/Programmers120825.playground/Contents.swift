import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var answer = ""
    
    for i in my_string {
        for _ in 1...n {
            answer += String(i)
        }
    }
    
    return answer
}
