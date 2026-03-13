import SwiftUI

struct MainNavigation: View {
    @Binding var isLoggedIn: Bool
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(isLoggedIn: $isLoggedIn)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)

            AppointmentsView()
                .tabItem {
                    Label("Appointments", systemImage: "calendar")
                }
                .tag(1)

            RecordsView()
                .tabItem {
                    Label("Records", systemImage: "doc.text.fill")
                }
                .tag(2)

            ProfileView(isLoggedIn: $isLoggedIn)
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
                .tag(3)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainNavigation(isLoggedIn: .constant(true))
}
