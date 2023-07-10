class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        var max = (0,0)
        for num in nums {
            if let _ = dict[num] {
                dict[num]? += 1
            } else {
                dict[num] = 1
            }
        }
        for (num, count) in dict {
            if max.1 < count {
                max = (num, count)
            }
        }
        return max.0
    }
}
