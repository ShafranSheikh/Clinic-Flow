import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Welcome back,")
                        .font(.title2)
                        .foregroundColor(.secondary)
                    
                    Text("Dr. Shafran")
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                    
                    // placeholder for content
                    RoundedRectangle(cornerRadius: 20)
                        .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(height: 150)
                        .overlay(
                            VStack(alignment: .leading) {
                                Text("New Appointments")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text("You have 5 patients today")
                                    .font(.subheadline)
                                    .foregroundColor(.white.opacity(0.8))
                            }
                            .padding(),
                            alignment: .bottomLeading
                        )
                }
                .padding()
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
