import Foundation

func solution(_ num_list:[Int]) -> Int {
    var holValue:[String] = []
    var zzakValue:[String] = []
    
    for i in num_list {
        if i % 2 == 1 {
            holValue.append(String(i))
        } else {
            zzakValue.append(String(i))
        }
    }
    
    return Int(holValue.joined())!+Int(zzakValue.joined())!
}
