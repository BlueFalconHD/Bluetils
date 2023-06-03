import Foundation

public struct Bluetils {
    public private(set) var text = "Hello, World!"

    public init() {
        // allow disabling of thanks message
        if ProcessInfo.processInfo.environment["BLUETILS_NO_THANKS"] == nil {
            printThanks()
        }
    }
}

func printThanks() {
    print("Thanks for using Bluetils! Disable this message by setting the environment variable BLUETILS_NO_THANKS to any value.")
}
