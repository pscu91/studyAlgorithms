import Foundation

func solution(_ my_string: String) -> String {
    let words = my_string.map { $0.isLowercase ? $0.uppercased(): $0.lowercased() }.joined()

    return words
}
