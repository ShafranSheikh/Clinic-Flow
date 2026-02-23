import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 0){
                    // Header Section
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Profile")
                                .font(.title.bold())
                        }
                        .foregroundColor(.white)
                    }
                    .frame(height: 280)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .background(Color.blue)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        NavigationLink(destination: ActiveVisit()) {
                            Text("Edit profile")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(50)
                        }
                        .padding(.top, 5)
                    }
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.08), radius: 10, x: 0, y: 5)
                    .padding(.horizontal)
                    .offset(y: -60)
                }
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    ProfileView()
}
