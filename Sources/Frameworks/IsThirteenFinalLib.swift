
class IsThirteenFinalLib {

    final func isThirteen(_ value: Int) -> Bool {

        return value == 13
    }

    final func isThirteen(_ value: UInt) -> Bool {

        return value == 13
    }

    final func isThirteen(_ value: Double) -> Bool {

        return value == 13.0
    }

    final func isThirteen(_ value: Float) -> Bool {

        return value == 13.0
    }

    final func isThirteen(_ value: String) -> Bool {

        return value == "13"
            || value == "thirteen"
    }
}
