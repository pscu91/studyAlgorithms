import Foundation

func solution(_ money:Int) -> [Int] {
    var coffeeCount: Int = money / 5500
    var resultMoney: Int = 0
    
    resultMoney = money - (coffeeCount * 5500)
    
    return [coffeeCount, resultMoney]
}
