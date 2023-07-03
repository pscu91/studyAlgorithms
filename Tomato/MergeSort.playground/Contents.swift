import UIKit

func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
    // Middle Index
    let middle = array.count/2
    
    // Left | Right
    let left = mergeSort(Array(array[0..<middle]))
    let right = mergeSort(Array(array[middle..<array.count]))
    
    // left + right
    return merge(left, right)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var leftIdx = 0
    var rightIdx = 0
    
    var result = [Int]()
    result.reserveCapacity(left.count + right.count)
    
    while leftIdx < left.count && rightIdx < right.count {
        if left[leftIdx] < right[rightIdx] {
            result.append(left[leftIdx])
            leftIdx += 1
        }
        else if left[leftIdx] > right[rightIdx] {
            result.append(right[rightIdx])
            rightIdx += 1
        }
        else {
            result.append(left[leftIdx])
            result.append(right[rightIdx])
            leftIdx += 1
            rightIdx += 1
        }
    }
    
    while leftIdx < left.count {
        result.append(left[leftIdx])
        leftIdx += 1
    }
    
    while rightIdx < right.count {
        result.append(right[rightIdx])
        rightIdx += 1
    }
    
    return result
}

// Create a list of random Ints
var numbers: [Int] = []
for _ in 0..<6 {
    numbers.append(Int.random(in: 0...1000000))
}

print(numbers)

let sorted = mergeSort(numbers)

print(sorted)
