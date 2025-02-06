import Foundation

func solution(_ numbers: [Int]) -> Int {
    let positiveSortedNumbers: [Int] = numbers.sorted(by: >)
    let negativeSortedNumbers: [Int] = numbers.sorted()

    var positiveMax = positiveSortedNumbers[0] * positiveSortedNumbers[1]
    var negativeMax = negativeSortedNumbers[0] * negativeSortedNumbers[1]

    if negativeMax > positiveMax {
        return negativeMax
    } else {
        return positiveMax
    }
}
