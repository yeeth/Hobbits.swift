import Foundation

class TCPConnection {

    func read(length: Int) -> [UInt8] {

    }

    func write(_ response: Response) throws {
        let data = String(describing: response)

        // @todo write(data.bytes)
    }

    func close() {

    }

}
