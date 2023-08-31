import Foundation

func solution(_ num_list:[Int]) -> Int {
    var gob = 1
    var hap = 0
    
    for i in num_list {
        gob = gob * i
    }
    
    for i in num_list {
        hap += i
    }
    
    if gob < (hap * hap) {
        return 1
    } else {
        return 0
    }
}
