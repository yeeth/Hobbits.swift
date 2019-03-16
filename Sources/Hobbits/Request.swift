import Foundation

public struct Request {
    let version: String
    let command: Command
    let compression: String
    let responseCompression: [String]
    let headOnlyIndicator: Bool
    let headers: [UInt8]
    let body: [UInt8]
}

extension Request: CustomStringConvertible {
    public var description: String {
        var value = "EWP " + version
            + " " + Command.toString(command: command)
            + " " + compression
            + " " + responseCompression.joined(separator: ",")
            + " " + String(headers.count)
            + " " + String(body.count)

        if headOnlyIndicator {
            value += " H"
        }

        value += "\n"
        value += String(bytes: headers, encoding: .utf8)!
        value += String(bytes: body, encoding: .utf8)!

        return value
    }
}
