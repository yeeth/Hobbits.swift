import Foundation

// @todo remove send*, they aren't commands

public enum Command: UInt8 {
    case hello = 0x00
    case requestBlockRoot = 0x10
    case sendBlockRoot = 0x11
    case requestBlockHeader = 0x12
    case sendBlockHeader = 0x13
    case requestBlockBody = 0x14
    case sendBlockBody = 0x15
}

extension Command: CustomStringConvertible {

    public var description: String {
        switch self {
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
        case "\(Command.hello)":
            self = .hello
        case "\(Command.requestBlockRoot)":
            self = .requestBlockRoot
        case "\(Command.sendBlockRoot)":
            self = .sendBlockRoot
        case "\(Command.requestBlockHeader)":
            self = .requestBlockHeader
        case "\(Command.sendBlockHeader)":
            self = .sendBlockHeader
        case "\(Command.requestBlockBody)":
            self = .requestBlockBody
        case "\(Command.sendBlockBody)":
            self = .sendBlockBody
        default:
            return nil
        }
    }
}
