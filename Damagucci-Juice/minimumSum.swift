class Solution {
    func minimumSum(_ num: Int) -> Int {
        let arr = String(num).compactMap { Int(String($0)) }.sorted()
        var new1 = ""
        var new2 = "" 
        for i in 0..<4 {
            if i % 2 == 0 {
                new1 += String(arr[i])
            } else {
                new2 += String(arr[i])
            }
        }
        return Int(new1)! + Int(new2)!
    }
}
