import Foundation

func solution(_ rny_string:String) -> String {
    if rny_string.contains("m") == true {
        return rny_string.replacingOccurrences(of: "m", with: "rn")
    } else {
        return rny_string
    }
}
