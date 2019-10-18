import Foundation
import UIKit
@testable import InjectAndMockStaticFrameworksExample

class UIApplicationMock: UIApplicationURLNavigatorBridge {

    var openUrlCallCount = 0
    var openedUrl: URL?

    func open(
        _ url: URL,
        options: [UIApplication.OpenExternalURLOptionsKey: Any],
        completionHandler: ((Bool) -> Void)?) {

        self.openUrlCallCount += 1
        self.openedUrl = url
    }
}
