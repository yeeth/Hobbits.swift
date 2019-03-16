import Foundation

// @todo remove send*, they aren't commands

enum Command: UInt8 {
    case hello = 0x00
    case requestBlockRoot = 0x10
    case sendBlockRoot = 0x11
    case requestBlockHeader = 0x12
    case sendBlockHeader = 0x13
    case requestBlockBody = 0x14
    case sendBlockBody = 0x15

    static func toString(command: Command) -> String {
        switch (command) {
        case .hello:
            return "HELLO"
        case .requestBlockRoot:
            return "REQUEST_BLOCK_ROOT"
        case .sendBlockRoot:
            return "SEND_BLOCK_ROOT"
        case .requestBlockHeader:
            return "REQUEST_BLOCK_HEADER"
        case .sendBlockHeader:
            return "SEND_BLOCK_HEADER"
        case .requestBlockBody:
            return "REQUEST_BLOCK_BODY"
        case .sendBlockBody:
            return "SEND_BLOCK_BODY"
        }
    }
}

extension Command {

    init?(_ command: String) {
        switch (command) {
        case "HELLO":
            self = .hello
        case "REQUEST_BLOCK_ROOT":
            self = .requestBlockRoot
        case "SEND_BLOCK_ROOT":
            self = .sendBlockRoot
        case "REQUEST_BLOCK_HEADER":
            self = .requestBlockHeader
        case "SEND_BLOCK_HEADER":
            self = .sendBlockHeader
        case "REQUEST_BLOCK_BODY":
            self = .requestBlockBody
        case "SEND_BLOCK_BODY":
            self = .sendBlockBody
        default:
            return nil
        }
    }

}
