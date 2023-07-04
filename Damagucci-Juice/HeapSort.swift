import Foundation

func heapSort(_ arr: [Int]) -> [Int] {
    // MARK: - Max heap or descending heap 중 선택, "정렬된" 힙이면 됨
    func buildDescendingHeap() -> [Int] {
        var arr = arr
        var result = [Int]()
        
        while !arr.isEmpty {
            let first = arr.removeFirst()
            result = insert(result, first)
        }
        return result
    }
    
    func heapify(_ arr: [Int], _ lastIndex: Int) -> [Int] {
        var arr = [0] + arr
        let maximum = arr[1]
        arr[1] = arr[lastIndex]
        arr[lastIndex] = maximum
        
        var currentIndex = 1
        var left: Int { currentIndex * 2 }
        var right: Int { currentIndex * 2 + 1 }
        var childIndex = 0
        
        while left < lastIndex || right < lastIndex {
            //MARK: - ChildIndex 초기화
            if left < lastIndex, right < lastIndex {
                childIndex = arr[left] > arr[right] ? left : right
            } else if left < lastIndex {
                childIndex = left
            } else if right < lastIndex {
                childIndex = right
            }
            
            // MARK: - [Swap] child 노드와 current 노드
            if arr[childIndex] > arr[currentIndex] {
                let child = arr[childIndex]
                arr[childIndex] = arr[currentIndex]
                arr[currentIndex] = child
            }
            currentIndex = childIndex
        }
        return Array(arr[1..<arr.endIndex])
    }
    
    func insert(_ arr: [Int], _ data: Int) -> [Int] {
        var heap = [0] + arr + [data]
        var currentIndex = heap.endIndex - 1
        var parentIndex = Int(currentIndex / 2)
        
        while heap[parentIndex] < data {
            if parentIndex < 1 { break }
            let parent = heap[parentIndex]
            heap[parentIndex] = data
            heap[currentIndex] = parent
            currentIndex = parentIndex
            parentIndex /= 2
        }
        return Array(heap[1..<heap.endIndex])
    }
    
    var sortedHeap = buildDescendingHeap()
    for i in 0..<sortedHeap.count {
        sortedHeap = heapify(sortedHeap, sortedHeap.count - i)
    }
    return sortedHeap
}

let arr = [2,7,26,25,19,17,1,90,3,36]

print("Init arr: \(arr)")
print("heap sorted arr: \(heapSort(arr))")



