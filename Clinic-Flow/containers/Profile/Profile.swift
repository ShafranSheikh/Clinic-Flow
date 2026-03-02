import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 0){
                    // Header
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Profile")
                                .font(.title.bold())
                        }
                        .foregroundColor(.white)
                    }
                    .frame(height: 200)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .background(Color.blue)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        HStack(spacing: 15) {
                            ZStack(alignment: .bottomTrailing) {
                                Circle()
                                    .fill(Color.gray.opacity(0.1))
                                    .frame(width: 80, height: 80)
                                
                                Image(systemName: "person.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.gray)
                                    .frame(width: 80, height: 80)
                                
                            }
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Jhon Doe")
                                    .font(.title2.bold())
                                    .foregroundColor(.black)
                                Text("jhonedoe@gmail.com")
                                    .font(.subheadline)
                                Text("Patient Id: patd32114")
                                    .font(.caption)
                            }
                        }
                        .padding(.bottom, 5)
                        
                        NavigationLink(destination: Text("Edit Profile View")) {
                            Text("Edit Profile")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 14)
                                .background(Color.blue)
                                .cornerRadius(50)
                        }
                    }
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
                    .padding(.horizontal)
                    .offset(y: -60)
                    
                    
                    VStack(alignment: .leading, spacing: 25) {
                        Text("Account")
                            .font(.title2.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            
                            HStack(spacing: 15) {
                                Image(systemName: "person.fill")
                                    .frame(width: 30)
                                Text("Personal Informations")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.caption)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(color: .black.opacity(0.05), radius: 5)
                        }

                        Text("Support")
                            .font(.title2.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                        VStack(alignment: .leading, spacing: 15) {
                            HStack {
                                Image(systemName: "globe")
                                    .frame(width: 30)
                                Text("Switch Language")
                                Spacer()
                                Image(systemName: "chevron.down")
                                    .font(.caption)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            
                            NavigationLink(destination: Emergency()) {
                                HStack {
                                    Image(systemName: "light.beacon.max.fill")
                                        .frame(width: 30)
                                    Text("Emergency Contacts")
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .font(.caption)
                                }
                                .foregroundColor(.primary)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(12)
                            }
                            
                            
                            HStack {
                                Image(systemName: "person.badge.shield.checkmark.fill")
                                    .frame(width: 30)
                                Text("Help center")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.caption)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                        }
                        
                        
                        Button(action: {}) {
                            Text("Sign Out")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 16)
                                .background(Color.blue)
                                .cornerRadius(50)
                        }
                        .padding(.top, 10)
                    }
                    .padding(.horizontal)
                    .offset(y: -40)
                }
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    ProfileView()
}
