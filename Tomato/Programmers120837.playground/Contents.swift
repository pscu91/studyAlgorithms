import Foundation

func solution(_ hp:Int) -> Int {
    var ResultShogun = hp / 5
    var ResultArmy = (hp % 5) / 3
    var ResultWorker = ((hp % 5) % 3) / 1
    
    return ResultShogun + ResultArmy + ResultWorker
}
