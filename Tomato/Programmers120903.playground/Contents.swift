import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var arrMeterialSames = s1.filter{s2.contains($0)}
    
    return arrMeterialSames.count
}
