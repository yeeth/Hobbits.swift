import Foundation

enum Command: UInt8 {
    case hello = 0x00
    case requestBlockRoot = 0x10
    case sendBlockRoot = 0x11
    case requestBlockHeader = 0x12
    case sendBlockHeader = 0x13
    case requestBlockBody = 0x14
    case sendBlockBody = 0x15
}

extension Command {

    init?(_ command: String) {
        switch (command) {
        case "Hello":
            self = .hello
        case "Request block root":
            self = .requestBlockRoot
        case "Send block root":
            self = .sendBlockRoot
        case "Request block header":
            self = .requestBlockHeader
        case "Send block header":
            self = .sendBlockHeader
        case "Request block body":
            self = .requestBlockBody
        case "Send block body":
            self = .sendBlockBody
        default:
            return nil
        }
    }

}
