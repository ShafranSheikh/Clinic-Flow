import SwiftUI

struct PersonalInfo: View {
    @Environment(\.dismiss) var dismiss
    
    // User profile data constants
    let firstName = "Jhone"
    let lastName = "Doe"
    let email = "Jhonedoe@gmail.com"
    let phone = "07724357501"
    let address = "254/A, High Level Road, Maharagama"
    
    var body: some View {
        VStack(spacing: 0) {
         
            VStack(alignment: .leading, spacing: 15) {
               
                Button(action: { dismiss() }){
                    Image(systemName: "arrow.left")
                }
                .foregroundColor(Color.white)
                .padding(.leading, 20)
                .padding(.top, 60)
                
                Text("Profile Details")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.leading, 25)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 220)
            .background(Color.blue)
            
            // MARK: - Profile Image
            ZStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 110, height: 110)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                
                Image(systemName: "person.fill")
                    .font(.system(size: 45))
                    .foregroundColor(.white)
            }
            .shadow(color: .black.opacity(0.1), radius: 10, y: 5)
            .padding(.top, -55)
            .zIndex(1)
            
            // MARK: - Information List
            ScrollView {
                VStack(alignment: .leading, spacing: 25) {
                    InfoRow(label: "First Name", value: firstName)
                    InfoRow(label: "Last Name", value: lastName)
                    InfoRow(label: "Email", value: email)
                    InfoRow(label: "Phone No", value: phone)
                    InfoRow(label: "Address", value: address)
                }
                .padding(30)
            }
            
            Spacer()
            
            
            Button(action: {
                print("Profile Saved")
                dismiss()
            }) {
                Text("Back")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 54)
                    .background(Color.blue)
                    .cornerRadius(12)
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 30)
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color.white)
    }
}

// MARK: - Row Component
struct InfoRow: View {
    let label: String
    let value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(label.uppercased())
                .font(.system(size: 11, weight: .bold))
                .foregroundColor(.secondary.opacity(0.7))
                .kerning(1.0)
            
            Text(value)
                .font(.system(size: 17, weight: .medium))
                .foregroundColor(.primary)
            
            Divider()
                .padding(.top, 4)
        }
    }
}

#Preview {
    PersonalInfo()
}
