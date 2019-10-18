@testable import InjectAndMockStaticFrameworksExample

class IsThirteenStaticLibMock: IsThirteenStaticLibBridge {

    static var mockedIsThirteen = true

    static var isThirteenCallCount = 0

    static func isThirteen(_ value: Any?) -> Bool {

        IsThirteenStaticLibMock.isThirteenCallCount += 1
        return IsThirteenStaticLibMock.mockedIsThirteen
    }
}
