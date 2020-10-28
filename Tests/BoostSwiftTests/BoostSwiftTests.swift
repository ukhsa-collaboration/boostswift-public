
import BoostSwift
import XCTest

class BoostSwiftTests: XCTestCase {
    func testThatGamma_p_invCanBeCalled() {
        // value taken from MATLAB
        XCTAssertEqual(gamma_p_inv(3, 0.5) * 5, 13.3703, accuracy: 1e-4)
    }
}
