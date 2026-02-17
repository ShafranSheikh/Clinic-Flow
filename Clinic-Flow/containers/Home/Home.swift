import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Welcome back")
                    .font(.title3)
                    .foregroundColor(.secondary)
                Spacer()
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
