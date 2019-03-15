import Foundation

public struct Response {
    let code: ResponseCode
    let compression: String // @todo add enum for valid compression types
    let headers: [UInt8]
    let body: [UInt8]
}
