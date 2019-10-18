@testable import InjectAndMockStaticFrameworksExample
import XCTest

class URLNavigatorUIApplicationImplTests: XCTestCase {

    private var navigator: URLNavigatorUIApplicationImpl!

    private var uiapplication: UIApplicationMock!

    func testNavigatorOpensUrlThroughUIApplication() {

        let url = URL(string: "https://example.com/path/to/resource")!

        self.navigator.naviagate(to: url)

        XCTAssertEqual(self.uiapplication.openUrlCallCount, 1)
        XCTAssertEqual(self.uiapplication.openedUrl, url)
    }

    override func setUp() {
        super.setUp()

        self.uiapplication = UIApplicationMock()

        self.navigator = URLNavigatorUIApplicationImpl()
        self.navigator.setUIApplication(self.uiapplication)
    }
}
