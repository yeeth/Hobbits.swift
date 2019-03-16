import Foundation

extension String {

    public var bytes: [UInt8] {
        return [UInt8](self.utf8)
    }

}
