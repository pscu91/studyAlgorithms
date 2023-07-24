import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var result: Int = 0
    
    if n > 9 {
        let freeDrink: Int = n / 10
        result = (n * 12000) + ((k - freeDrink) * 2000)
        
        return result
    } else {
        result = (n * 12000) + (k * 2000)
        
        return result
    }
}
