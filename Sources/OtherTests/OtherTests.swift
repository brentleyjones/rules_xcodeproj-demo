import SuperSecret
import XCTest

class OtherTests: XCTestCase {
    func testOther() throws {
        XCTAssertEqual(2 + 2, 4)
        XCTAssertEqual(tech, "Bazel")
    }

    func testTSAN() {
        var name = ""
        DispatchQueue.global().async {
            name.append("Thread Sanitizer Test")
        }
        _ = name
    }
}
