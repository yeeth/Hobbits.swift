import XCTest
@testable import Hobbits

final class ParserTests: XCTestCase {

    func testParse() {

        let request = "EWP 0.1 HELLO none none 0 5\n12345"

        let parsed = Parser.parse(input: request)

        XCTAssertEqual(parsed.version, "0.1")
        XCTAssertEqual(parsed.command, Command.hello)
        XCTAssertEqual(parsed.body, [UInt8]("12345".utf8))
        XCTAssertEqual(parsed.compression, "none")
        XCTAssertEqual(parsed.responseCompression, ["none"])
        XCTAssertEqual(parsed.headers, [])
        XCTAssertFalse(parsed.headOnlyIndicator)
    }

    static var allTests = [
        ("testParse", testParse),
    ]
}
