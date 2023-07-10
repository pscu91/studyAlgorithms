class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var result = [Int]()
        for num in nums {
            if num == val {
                continue
            }
            result.append(num)
        }
        nums = result
        return result.count
    }
}
