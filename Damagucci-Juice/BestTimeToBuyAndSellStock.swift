class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices == prices.sorted(by: >) { return 0 }
        var profit = 0 
        var beforeMin = Int.max
        for i in 0..<prices.count {
            let price = prices[i]
            if beforeMin > price {
                beforeMin = price
            } else {
                continue
            }

            let currentMax = Array(prices[i+1..<prices.count]).filter { $0 > price }.max() ?? 0
            profit = max(profit, currentMax - price)
        }
        return profit > 0 ? profit : 0 
    }
}
