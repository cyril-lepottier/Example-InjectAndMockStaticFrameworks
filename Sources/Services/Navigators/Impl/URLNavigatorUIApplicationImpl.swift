import Foundation
import UIKit

class URLNavigatorUIApplicationImpl: URLNavigator {

    private var uiapplication: UIApplicationURLNavigatorBridge!

    func naviagate(to url: URL) {

        self.uiapplication.open(url, options: [:], completionHandler: nil)
    }

    func setUIApplication(_ application: UIApplicationURLNavigatorBridge) {
        self.uiapplication = application
    }
}

protocol UIApplicationURLNavigatorBridge {

    func open(_: URL, options: [UIApplication.OpenExternalURLOptionsKey: Any], completionHandler: ((Bool) -> Void)?)
}

extension UIApplication: UIApplicationURLNavigatorBridge {
}
