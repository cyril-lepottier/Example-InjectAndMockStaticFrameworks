@testable import InjectAndMockStaticFrameworksExample

class IsThirteenFinalLibMock: IsThirteenFinalLibBridge {

    var mockedIsThirteen = true

    var isThirteenCallCount = 0

    func isThirteen(_: Int) -> Bool {

        self.isThirteenCallCount += 1
        return self.mockedIsThirteen
    }

    func isThirteen(_: UInt) -> Bool {

        self.isThirteenCallCount += 1
        return self.mockedIsThirteen
    }

    func isThirteen(_: Double) -> Bool {

        self.isThirteenCallCount += 1
        return self.mockedIsThirteen
    }

    func isThirteen(_: Float) -> Bool {

        self.isThirteenCallCount += 1
        return self.mockedIsThirteen
    }

    func isThirteen(_: String) -> Bool {

        self.isThirteenCallCount += 1
        return self.mockedIsThirteen
    }
}
