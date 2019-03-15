import Foundation

public struct Request {
    let version: String
    let command: String
    let compression: String
    let responseCompression: [String]
    let headOnlyIndicator: Bool
    let headers: [UInt8]
    let body: [UInt8]
}
