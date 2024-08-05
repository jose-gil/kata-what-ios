import Network
import User
import Analytics

public class Profile {
    public init() {
        Tracker.shared.track(value: "Profile - init")
        _ = User()
        _ = Network()
    }

    public static func modifyUserState() {
        User.state = "User state - Modified by Profile"
    }
}

