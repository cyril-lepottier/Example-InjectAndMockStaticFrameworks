@testable import InjectAndMockStaticFrameworksExample
import XCTest

class ThirteenValidatorStaticLibImplTests: XCTestCase {

    private var validator: ThirteenValidatorStaticLibImpl!

    private var isThirteenStaticLibMock: IsThirteenStaticLibMock.Type!

    func testValidatorGetsResultFromTheLibrary() {

        let dataProvider: [[String: Any]] = [
            ["libResult": true],
            ["libResult": false]
        ]

        dataProvider.forEach {
            let libResult = $0["libResult"] as! Bool

            self.isThirteenStaticLibMock.mockedIsThirteen = libResult

            let isThirteen = self.validator.validate(42)

            XCTAssertEqual(isThirteen, libResult)
        }
    }

    override func setUp() {
        super.setUp()

        self.isThirteenStaticLibMock = IsThirteenStaticLibMock.self

        self.validator = ThirteenValidatorStaticLibImpl()
        self.validator.setIsThirteenLib(self.isThirteenStaticLibMock)
    }
}
