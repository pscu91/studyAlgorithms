class Solution {
    func sortSentence(_ s: String) -> String {
        let arr = s.split(separator: " ").sorted { word1, word2 in
            word1.last! < word2.last!
        }
        var result = ""
        for sequence in arr {
            var foo = sequence
            foo.removeLast()
            result += "\(String(foo)) "
        }
        result.removeLast()
        return result
    }
}
