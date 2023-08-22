import Foundation

func solution(_ strArr:[String]) -> [String] {
    
    return strArr.indices.map { ($0 % 2 == 0) ? strArr[$0].lowercased() : strArr[$0].uppercased() }

}
