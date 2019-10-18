@testable import InjectAndMockStaticFrameworksExample
import XCTest

class ThirteenValidatorFinalLibImplTests: XCTestCase {

    private var validator: ThirteenValidatorFinalLibImpl!

    private var isThirteenFinalLibMock: IsThirteenFinalLibMock!

    func testValidatorGetsResultFromTheLibrary() {

        let dataProvider: [[String: Any]] = [
            ["libResult": true],
            ["libResult": false]
        ]
        let sampleValues: [Any] = [
            Int(42),
            UInt(42),
            Double(42),
            Float(42),
            "forty-two"
        ]

        dataProvider.forEach {
            let libResult = $0["libResult"] as! Bool

            self.isThirteenFinalLibMock.mockedIsThirteen = libResult

            sampleValues.forEach {

                let isThirteen = self.validator.validate($0)

                XCTAssertEqual(isThirteen, libResult)
            }
        }
    }

    func testUnsupportedTypeReturnsFalse() {

        let isThirteen = self.validator.validate(self.validator)

        XCTAssertFalse(isThirteen)
    }

    override func setUp() {
        super.setUp()

        self.isThirteenFinalLibMock = IsThirteenFinalLibMock()

        self.validator = ThirteenValidatorFinalLibImpl()
        self.validator.setIsThirteenLib(self.isThirteenFinalLibMock)
    }
}
