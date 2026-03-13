import SwiftUI

struct ContentView: View {
    @State private var isLoggedIn: Bool = false

        var body: some View {
            Group {
                if isLoggedIn {
                    MainNavigation(isLoggedIn: $isLoggedIn)
                } else {
                    
                    Login(isLoggedIn: $isLoggedIn)
                }
            }
        }
}

#Preview {
    ContentView()
}
