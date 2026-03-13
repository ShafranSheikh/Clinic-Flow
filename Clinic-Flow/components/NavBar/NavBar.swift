import SwiftUI

struct MainNavigation: View {
    @State private var selectedTab = 0

    //MainNavigation(goToTab: tag) can navigate to needed page
    init(goToTab: Int = 0) {
        _selectedTab = State(initialValue: goToTab)
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
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

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
                .tag(3)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainNavigation()
}
