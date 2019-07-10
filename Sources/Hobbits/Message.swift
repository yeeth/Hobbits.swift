import Foundation

public struct Message {

    let version: UInt32 // @todo Version type
    let proto: Protocol
    let header: [UInt8]
    let body: [UInt8]
}

extension Message: CustomStringConvertible {

    public var bytes {
        
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
