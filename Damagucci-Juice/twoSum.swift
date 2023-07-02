class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for k in 0..<i {
                if nums[i] + nums[k] == target {
                    return [i,k]
                }
            }
        }
        return []
    }
}
