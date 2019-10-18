
class ThirteenValidatorStaticLibImpl: ThirteenValidator {

    private var isThirteenLib: IsThirteenStaticLibBridge.Type!

    func validate(_ value: Any?) -> Bool {

        return self.isThirteenLib.isThirteen(value)
    }

    func setIsThirteenLib(_ lib: IsThirteenStaticLibBridge.Type) {
        self.isThirteenLib = lib
    }
}

protocol IsThirteenStaticLibBridge {

    static func isThirteen(_ value: Any?) -> Bool
}

extension IsThirteenStaticLib: IsThirteenStaticLibBridge {
}
