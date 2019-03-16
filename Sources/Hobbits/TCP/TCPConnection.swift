import Foundation

class TCPConnection {

    // @todo not sure if this is the way to go yet
    fileprivate var input: InputStream?
    fileprivate var output: OutputStream?

    func read(length: Int) -> [UInt8] {
        if length == 0 {
            return [UInt8]()
        }

        var buffer = [UInt8](repeating: 0, count: length)
        input?.read(&buffer, maxLength: length)
        return buffer
    }

    func write(_ response: Response) throws {
        let data = String(describing: response)
        let bytes = data.bytes

        output?.write(bytes, maxLength: bytes.count)
    }

    func close() {

    }

}
