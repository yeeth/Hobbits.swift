import Foundation

// @todo not sure if parser class is optimal
class Parser {

    static func parse(input: String) -> Request {
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

        let headers = payload.substring(start: 0, end: headersLength)
        let body = payload.substring(start: headersLength, end: bodyLength)

        guard let command = Command(String(r[2])) else {
            fatalError() // @todo error
        }

        return Request(
            version: String(r[1]),
            command:  command,
            compression: String(r[3]),
            responseCompression: String(r[4]).split(separator: ",").map { return String($0) },
            headOnlyIndicator: String(r[7]) == "H",
            headers: [UInt8](headers.utf8),
            body: [UInt8](body.utf8)
        )
    }
}
