import Foundation

public struct Message {

    let version: UInt32
    let proto: Protocol
    let header: [UInt8]
    let body: [UInt8]
}

extension Message {

    public var bytes: [UInt8] {
        return [UInt8]("EWP".utf8)
    }
}

extension Message {

    init(serializedData input: [UInt8]) {

        if Array(input[0...3]) != [UInt8]("EWP".utf8) {
            // @todo error
        }

        // @todo
    }
}
