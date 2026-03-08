import SwiftUI

// MARK: - Main Profile View
struct ProfileView: View {
    @State private var selectedLanguage = "English"
    @State private var showLanguagePicker = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    // MARK: - Header
                    VStack(alignment: .leading) {
                        Text("Profile")
                            .font(.title.bold())
                            .foregroundColor(.white)
                    }
                    .frame(height: 180)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .background(Color.blue)
                    
                    // MARK: - User Summary Card
                    VStack(alignment: .leading, spacing: 20) {
                        HStack(spacing: 15) {
                            ZStack(alignment: .bottomTrailing) {
                                Circle()
                                    .fill(Color.gray.opacity(0.1))
                                    .frame(width: 80, height: 80)
                                    .overlay(
                                        Image(systemName: "person.fill")
                                            .font(.system(size: 40))
                                            .foregroundColor(.gray)
                                    )
                                
                                Image(systemName: "camera.circle.fill")
                                    .foregroundColor(.gray)
                                    .background(Color.white.clipShape(Circle()))
                                    .offset(x: 5, y: 0)
                            }
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Jhon Doe")
                                    .font(.title2.bold())
                                Text("jhonedoe@gmail.com")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text("Patient Id: patd32114")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                        
                        NavigationLink(destination: EditProfileView()) {
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
                    .shadow(color: Color.black.opacity(0.1), radius: 10, y: 5)
                    .padding(.horizontal)
                    .offset(y: -50)
                    
                    // MARK: - Menu Sections
                    VStack(alignment: .leading, spacing: 10) {
                        SectionHeader(title: "ACCOUNT")
                        
                        NavigationLink(destination: PersonalInfo()) {
                            MenuRow(icon: "person.fill", title: "Personal Information")
                        }
                        
                        SectionHeader(title: "SUPPORT")
                        
                        // Switch Language with simple Action Sheet
                        Button(action: { showLanguagePicker = true }) {
                            MenuRow(icon: "globe", title: "Switch Language (\(selectedLanguage))", isDropdown: true)
                        }
                        .confirmationDialog("Select Language", isPresented: $showLanguagePicker) {
                            Button("English") { selectedLanguage = "English" }
                            Button("Sinhala") { selectedLanguage = "Sinhala" }
                            Button("Tamil") { selectedLanguage = "Tamil" }
                            Button("Cancel", role: .cancel) { }
                        }
                        
                        NavigationLink(destination: Text("Emergency Contacts")) {
                            MenuRow(icon: "light.beacon.max.fill", title: "Emergency Contacts")
                        }
                        
                        NavigationLink(destination: HelpCenterView()) {
                            MenuRow(icon: "person.badge.shield.checkmark.fill", title: "Help center")
                        }
                        
                        NavigationLink(destination: PrivacyPolicyView()) {
                            MenuRow(icon: "person.badge.shield.checkmark.fill", title: "Privacy Policy")
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
                        .padding(.top, 20)
                    }
                    .padding(.horizontal)
                    .offset(y: -30)
                }
            }
            .background(Color(white: 0.98))
            .ignoresSafeArea(edges: .top)
        }
    }
}

// MARK: - Privacy Policy View
struct PrivacyPolicyView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 15) {
                Button(action: { dismiss() }) {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(.black)
                }
                .padding(.top, 60)
                
                Text("Privacy Policy")
                    .font(.system(size: 28, weight: .bold))
            }
            .padding(.horizontal, 25)
            .padding(.bottom, 20)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Last update: 2 January 2026")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("We respect your privacy. This app securely handles your personal and medical information to provide better healthcare services.")
                        .font(.body)
                        .foregroundColor(.primary)

                    Text("This clinic mobile application is committed to protecting user privacy and maintaining confidentiality...")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineSpacing(6)
                }
                .padding(25)
            }
        }
        .navigationBarHidden(true)
    }
}

// MARK: - Reusable Components
struct SectionHeader: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.caption.bold())
            .foregroundColor(.blue)
            .kerning(1.0) // FIXED: Replaced letterSpacing
            .padding(.top, 10)
    }
}

struct MenuRow: View {
    let icon: String
    let title: String
    var isDropdown: Bool = false
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: icon)
                .frame(width: 30)
                .foregroundColor(.black.opacity(0.7))
            
            Text(title)
                .foregroundColor(.black)
            
            Spacer()
            
            Image(systemName: isDropdown ? "chevron.down" : "chevron.right")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
    }
}
