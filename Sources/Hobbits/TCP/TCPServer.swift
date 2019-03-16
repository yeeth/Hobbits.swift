import Foundation

class TCPServer: NSObject {

    func start() {
        let service = NetService(domain: "", type: "", name: "")
        service.publish(options: [NetService.Options.listenForConnections])
    }

}

extension TCPServer: NetServiceDelegate {

    public func netService(
        _ sender: NetService,
        didAcceptConnectionWith inputStream: InputStream,
        outputStream: OutputStream
    ) {
        let connection = TCPConnection(input: input, output: outputStream)
        // @todo handle connection
    }
}

extension TCPServer {

    func handle(connection: TCPConnection) {
        
    }
}