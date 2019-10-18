import UIKit

class Container {

    static func getThirteenValidator() -> ThirteenValidator {

        let validator = ThirteenValidatorStaticLibImpl()
        validator.setIsThirteenLib(IsThirteenStaticLib.self)

        // let validator = ThirteenValidatorFinalLibImpl()
        // validator.setIsThirteenLib(IsThirteenFinalLib())

        return validator
    }

    static func getUrlNavigator() -> URLNavigator {

        let navigator = URLNavigatorUIApplicationImpl()
        navigator.setUIApplication(UIApplication.shared)

        return navigator
    }
}
