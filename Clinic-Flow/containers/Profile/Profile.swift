import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.gray)
                        VStack(alignment: .leading) {
                            Text("Dr. Shafran Sheikh")
                                .font(.headline)
                            Text("shafran@clinicflow.com")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 8)
                }
                
                Section("Settings") {
                    Label("Account", systemImage: "person.fill")
                    Label("Notifications", systemImage: "bell.fill")
                    Label("Privacy", systemImage: "lock.fill")
                }
                
                Section {
                    Button(role: .destructive) {
                        // Logout
                    } label: {
                        Text("Log Out")
                    }
                }
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
