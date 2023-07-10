class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return true }
        guard nums[0] != 0 else { return false }
        
        var availables: [Int] = [nums[0]]
        for i in 1..<nums.count-1 {
            availables.append(max(availables[i-1]-1, nums[i]))
            if availables[i] == 0 {
                return false 
            }
        }
        return true
    }
}
