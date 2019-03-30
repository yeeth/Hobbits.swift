import XCTest
@testable import Hobbits

final class MessageTests: XCTestCase {

    func testSerializedDataInit() {

        let request = "EWP 0.2 RPC none json 0 5\n12345"

        let parsed = Message(serializedData: request)

        XCTAssertEqual(parsed.version, "0.2")
        XCTAssertEqual(parsed.body, [UInt8]("12345".utf8))
        XCTAssertEqual(parsed.encoding, "json")
        XCTAssertEqual(parsed.compression, "none")
        XCTAssertEqual(parsed.headers, [])
        XCTAssertEqual(request, String(describing: parsed))
    }

    static var allTests = [
        ("testSerializedDataInit", testSerializedDataInit),
    ]
}
