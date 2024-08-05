import Analytics

public class User {
    public static var state = "Not defined"

    public init() {
        Tracker.shared.track(value: "User - init")
    }
}
