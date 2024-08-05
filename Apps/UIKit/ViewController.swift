import Analytics
import Network
import Profile
import UIKit
import User

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel(frame: .zero)
        label.text = "UIKitApp"
        label.textAlignment = .center
        label.backgroundColor = .white
        view = label

        Tracker.shared.systemName = "App"

        _ = User()
        _ = Profile()
        _ = Network()

        User.state = "User state - Modified by ViewController"
        Profile.modifyUserState()
        Tracker.shared.track(value: User.state)
    }
}
