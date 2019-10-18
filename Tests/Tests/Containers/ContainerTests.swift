import XCTest
@testable import InjectAndMockStaticFrameworksExample

class ContainerTests: XCTestCase {

    func testContainerCreateThirteenValidator() {

        let validator = Container.getThirteenValidator()

        XCTAssertNotNil(validator)
    }

    func testContainerCreateURLNavigator() {

        let navigator = Container.getUrlNavigator()

        XCTAssertNotNil(navigator)
    }
}
