import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    var Germ: Int = n

    for i in 1...t {
        Germ = Germ * 2
    }
    
    return Germ
}
