import Foundation

struct Message {

    let version: String // @todo Version type
    let proto: Protocol
    let compression: String
    let encoding: String
    let headers: [UInt8]
    let body: [UInt8]
}

extension Message: CustomStringConvertible {

    public var description: String {
        return "EWP " + version
            + " " + proto.rawValue
            + " " + compression
            + " " + encoding
            + " " + String(headers.count)
            + " " + String(body.count)
            + "\n" + String(bytes: headers, encoding: .utf8)!
            + String(bytes: body, encoding: .utf8)!
    }
}

extension Message {

    init(serializedData input: String) {
        var lines = input.split(separator: "\n")
        if lines.count == 1 {
            lines.append("")
        }

        let payload = lines[1]

        var request = lines[0].split(separator: " ")
        assert(request.count >= 7) // @todo exception handling

        let headersLength = Int(request[5])!
        let bodyLength = Int(request[6])!

        version = String(request[1])
        proto = Protocol(rawValue: String(request[2]))!
        compression = String(request[3])
        encoding = String(request[4])
        headers = payload.substring(start: 0, end: headersLength).bytes
        body = payload.substring(start: headersLength, end: bodyLength).bytes
    }
}