import XCTest
import Jack
import JackScript

final class JackScriptTests: XCTestCase {
    func testJackScript() throws {
        class PlugIn : JackedObject {
            @Stack var num = 1
        }
    }
}

