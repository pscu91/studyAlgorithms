class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var ans = 0
        for i in 0..<nums.count {
            for k in 0..<i {
                let num1 = nums[i] - 1
                let num2 = nums[k] - 1 
                ans = max(ans, num1*num2)
            }
        }
        return ans
    }
}
