import Foundation

public enum ResponseCode: UInt16 {
    case ok = 200
    case badRequest = 400
    case forbidden = 403
    case notFound = 404
    case internalServerError = 500
}
