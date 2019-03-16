import Foundation

public enum ResponseCode: UInt16 {
    case ok = 200
    case badRequest = 400
    case forbidden = 403
    case notFound = 404
    case requestCompressionUnsupported = 406
    case responseCompressionUnsupported = 407
    case internalServerError = 500
    case notImplemented = 501
}
