class Solution {
    func maxDepth(_ s: String) -> Int {
        var stack = 0 
        var maximum = 0 
        for c in s {
            let str = String(c)
            if str == "(" {
                stack += 1
            } else if str == ")" {
                stack -= 1
            }
            maximum = max(maximum, stack)
        }
        return maximum
    }
}
