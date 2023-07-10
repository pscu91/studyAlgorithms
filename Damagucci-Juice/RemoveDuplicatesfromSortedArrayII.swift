class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 2 else {
            return nums.count
        }
        guard nums.count > 3 else { 
            if nums[2] == nums[0] {
                nums.removeLast()
            }
            return nums.count
        }

        var count = 0
        for i in 2..<nums.count-1 {
            if nums[i] == nums[i-2] {
                count += 1
                nums = Array(nums[0..<i]) + [10001] + Array(nums[i+1..<nums.count])
            } else if nums[i-1] == 10001 {
                if nums[i-count-1] == nums[i] {
                    count += 1
                    nums = Array(nums[0..<i]) + [10001] + Array(nums[i+1..<nums.count])
                } else {
                    count = 0
                }
            }
        }
        
        nums = nums.filter { $0 != 10001 }

        if nums[nums.count-1] == nums[nums.count-3] {
            nums.removeLast()
        }

        return nums.count
    }
}
