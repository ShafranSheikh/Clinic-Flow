import SwiftUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    
    // User profile state
    @State private var firstName = "Jhone"
    @State private var lastName = "Doe"
    @State private var email = "Jhonedoe@gmail.com"
    @State private var phone = "07724357501"
    @State private var address = "254/A, High Level Road, Maharagama"
    
    var body: some View {
        VStack(spacing: 0) {
            // MARK: - Header Section
            ZStack(alignment: .topLeading) {
                Color.blue
                    .frame(height: 160) // Compacted header
                
                VStack(alignment: .leading, spacing: 12) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    
                    Text("Edit Profile")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
                .padding(.top, 50)
                .padding(.leading, 20)
                
                // Profile Image Overlay
                VStack {
                    Spacer()
                    ZStack(alignment: .bottomTrailing) {
                        Circle()
                            .fill(Color(UIColor.systemGray5))
                            .frame(width: 100, height: 100)
                            .overlay(Circle().stroke(Color.white, lineWidth: 3))
                            .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                        
                        Image(systemName: "person.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                            .frame(width: 100, height: 100)

                        Image(systemName: "pencil")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.white)
                            .padding(7)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .offset(x: 2, y: 2)
                    }
                    .offset(y: 50)
                }
                .frame(maxWidth: .infinity)
            }
            
            // MARK: - Fixed Form Content (No Scroll)
            VStack(spacing: 14) { // Tightened spacing
                Spacer().frame(height: 50) // Space for overlapping avatar
                
                CleanTextField(label: "First Name", text: $firstName)
                CleanTextField(label: "Last Name", text: $lastName)
                CleanTextField(label: "Email", text: $email, keyboardType: .emailAddress)
                CleanTextField(label: "Phone No", text: $phone, keyboardType: .phonePad)
                CleanTextField(label: "Address", text: $address)
                
                Spacer() // Pushes the button to the bottom
                
                // MARK: - Pinned Save Button
                Button(action: {
                    print("Profile Saved")
                    dismiss()
                }) {
                    Text("Save Changes")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 54)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                .padding(.bottom, 20) // Extra padding for bottom safe area
            }
            .padding(.horizontal, 25)
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
        .background(Color(UIColor.secondarySystemBackground).ignoresSafeArea())
    }
}

// MARK: - Reusable Text Field
struct CleanTextField: View {
    let label: String
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(label)
                .font(.system(size: 14, weight: .semibold, design: .rounded))
                .foregroundColor(.secondary)

            TextField("", text: $text)
                .keyboardType(keyboardType)
                .font(.body)
                .padding(.vertical, 12)
                .padding(.horizontal, 15)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.02), radius: 2, x: 0, y: 1)
        }
    }
}

#Preview {
    EditProfileView()
}
