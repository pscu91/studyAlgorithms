class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var uniques = [Int]()
        for num in nums {
            if !uniques.contains(num) {
                uniques.append(num)
            }
        }
        nums = uniques
        return uniques.count
    }
}
