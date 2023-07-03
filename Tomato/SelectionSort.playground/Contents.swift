import UIKit

// Create a list of random Ints
var numbers: [Int] = []
for _ in 0..<5 {
    numbers.append(Int.random(in: 0...1000))
}

print(numbers)

// Sort the list
var sortedNumbers: [Int] = []

for _ in 0..<numbers.count {
    var smallest = numbers[0]
    var smallestIndex = 0
    for (index, number) in numbers.enumerated() {
        if number < smallest {
            smallest = number
            smallestIndex = index
        }
    }

    sortedNumbers.append(smallest)
    numbers.remove(at: smallestIndex)
}

print(sortedNumbers)

