import SuperSecret
import XCTest

@testable import App

class AppTests: XCTestCase {
    func testApp() throws {
        XCTAssertEqual(internalValue, 42)
        XCTAssertEqual(tech, "Bazel")
    }
}
