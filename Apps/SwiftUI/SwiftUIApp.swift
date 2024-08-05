import Analytics
import Network
import Profile
import SwiftUI
import User

@main
struct SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            Text("SwiftUIApp")
                .onAppear {
                    Tracker.shared.systemName = "App"

                    _ = User()
                    _ = Profile()
                    _ = Network()

                    User.state = "User state - Modified by ViewController"
                    Profile.modifyUserState()
                    Tracker.shared.track(value: User.state)
                }
        }
    }
}
