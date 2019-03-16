import Foundation

extension Substring {

    func substring(start: Int, end: Int) -> String {
        return String(self[index(startIndex, offsetBy: start)..<index(startIndex, offsetBy: start+end)])
    }
}
