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

public extension Request {

    init(serializedData input: String) throws {
        var result = input.split(separator: "\n")
        if result.count == 1 {
            result.append("")
        }

        let requestLine = result[0]
        let payload = result[1]

        var r = requestLine.split(separator: " ")
        if r.count < 8 {
            r.append(" ")
        }

        let headersLength = Int(r[5])!
        let bodyLength = Int(r[6])!

        guard let command = Command(String(r[2])) else {
            fatalError() // @todo error
        }

        version = String(r[1])
        self.command = command
        compression = String(r[3])
        responseCompression = String(r[4]).split(separator: ",").map { return String($0) }
        headOnlyIndicator = String(r[7]) == "H"
        headers = payload.substring(start: 0, end: headersLength).bytes
        body = payload.substring(start: headersLength, end: bodyLength).bytes
    }
}
