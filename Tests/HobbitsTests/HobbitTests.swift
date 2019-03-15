import XCTest
@testable import Hobbits

final class HobbitsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Hobbits().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
