class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var counter = [Int](repeating: 0, count: nums.count)
        for i in 0..<nums.count {
            let target = nums[i]
            for num in nums {
                if target > num {
                    counter[i] += 1
                }
            }
        }
        return counter
    }
}
