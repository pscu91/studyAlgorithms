
class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        var stack = [Character]()
        for char in s {
            switch char {
            case "(", "[", "{":
                stack.append(char)
            case ")":
                if let last = stack.last, last == "(" {
                    stack.removeLast()
                } else {
                    return false
                }
            case "]":
                if let last = stack.last, last == "[" {
                    stack.removeLast()
                } else {
                    return false
                }
            case "}":
                if let last = stack.last, last == "{" {
                    stack.removeLast()
                } else {
                    return false
                }
            default:
                print("unkwon error")
            }
        }
        return stack.isEmpty
    }
}
