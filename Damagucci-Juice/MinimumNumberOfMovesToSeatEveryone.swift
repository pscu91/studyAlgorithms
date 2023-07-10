class Solution {
    func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
        var sortedSeats = seats.sorted()
        let sortedStudents = students.sorted()
        for i in 0..<seats.count {
            sortedSeats[i] -= sortedStudents[i]
        }
        return sortedSeats.map({ abs($0) }).reduce(0) { $0 + $1 }
    }
}
