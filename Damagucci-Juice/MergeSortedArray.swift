class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard n != 0 else { 
            nums1 = Array(nums1[0..<m])
            return
        }
        guard m != 0 else { 
            nums1 = nums2
            return 
        }
        var a = Array(nums1[0..<m])
        var b = nums2
        var result = [Int]()

        while !a.isEmpty && !b.isEmpty {
            if a[0] > b[0] {
                result.append(b.removeFirst())
            } else {
                result.append(a.removeFirst())
            }
        }

        while !a.isEmpty {
            result.append(a.removeFirst())
        }

        while !b.isEmpty {
            result.append(b.removeFirst())
        }
        
        nums1 = result
    }
}
