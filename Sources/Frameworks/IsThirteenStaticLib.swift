
class IsThirteenStaticLib {

    static func isThirteen(_ value: Any?) -> Bool {

        if let int = value as? Int {
            return int == 13
        }
        else if let uint = value as? UInt {
            return uint == 13
        }
        else if let double = value as? Double {
            return double == 13.0
        }
        else if let float = value as? Float {
            return float == 13.0
        }
        else if let string = value as? String {
            return string == "13"
                || string == "thirteen"
        }

        return false
    }
}
