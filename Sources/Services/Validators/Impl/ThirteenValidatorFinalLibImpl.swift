
class ThirteenValidatorFinalLibImpl: ThirteenValidator {

    private var isThirteenLib: IsThirteenFinalLibBridge!

    func validate(_ value: Any?) -> Bool {

        if let int = value as? Int {
            return self.isThirteenLib.isThirteen(int)
        }
        else if let uint = value as? UInt {
            return self.isThirteenLib.isThirteen(uint)
        }
        else if let double = value as? Double {
            return self.isThirteenLib.isThirteen(double)
        }
        else if let float = value as? Float {
            return self.isThirteenLib.isThirteen(float)
        }
        else if let string = value as? String {
            return self.isThirteenLib.isThirteen(string)
        }

        return false
    }

    func setIsThirteenLib(_ lib: IsThirteenFinalLibBridge) {
        self.isThirteenLib = lib
    }
}

protocol IsThirteenFinalLibBridge {

    func isThirteen(_: Int) -> Bool
    func isThirteen(_: UInt) -> Bool
    func isThirteen(_: Double) -> Bool
    func isThirteen(_: Float) -> Bool
    func isThirteen(_: String) -> Bool
}

extension IsThirteenFinalLib: IsThirteenFinalLibBridge {
}
