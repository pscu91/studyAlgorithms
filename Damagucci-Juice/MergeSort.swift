
import Foundation

func merge(_ a: [Int], _ b: [Int]) -> [Int] {
    var result = [Int]()
    var a = a
    var b = b
    while !a.isEmpty && !b.isEmpty {
        if let aFirst = a.first,
           let bFirst = b.first {
            if aFirst > bFirst {
                result.append(b.removeFirst())
            } else {
                result.append(a.removeFirst())
            }
        }
    }
    
    while !a.isEmpty {
        result.append(a.removeFirst())
    }
    
    while !b.isEmpty {
        result.append(b.removeFirst())
    }
    
    return result
}


func mergeSort(_ arr: [Int]) -> [Int] {
    if arr.count == 1 {
        return arr
    }
    let middleIndex = arr.endIndex / 2
    var a = Array(arr[0..<middleIndex])
    var b = Array(arr[middleIndex..<arr.count])
    
    a = mergeSort(a)
    b = mergeSort(b)
    
    return merge(a, b)
}

let arr = [2,7,26,25,19,17,1,90,3,36]

print("Init arr: \(arr)")
print("merge sort: \(mergeSort(arr))")
