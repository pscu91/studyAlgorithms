//
//  File.swift
//  Miya
//
//  Created by 금가경 on 2023/07/09.
//

struct Queue {
    var queue: [Int] = []
    
    mutating func push(_ X: Int) {
        queue.append(X)
    }
    mutating func pop() -> Int {
        return queue.isEmpty ? -1 : queue.removeFirst()
    }
    func size() -> Int {
        return queue.count
    }
    func empty() -> Int {
        return queue.isEmpty ? 1 : 0
    }
    func front() -> Int {
        return queue.first ?? -1
    }
    func back() -> Int {
        return queue.last ?? -1
    }
}

var queue = Queue()

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    switch input[0] {
    case "push":
        queue.push(Int(input[1])!)
    case "pop":
        print(queue.pop())
    case "size":
        print(queue.size())
    case "empty":
        print(queue.empty())
    case "front":
        print(queue.front())
    case "back":
        print(queue.back())
    default:
        break
    }
}
