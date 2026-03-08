import SwiftUI

struct PrivacyPolicyView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                // MARK: - Header Section
                VStack(alignment: .leading, spacing: 15) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 22, weight: .bold)) // Slightly larger for better visibility
                            .foregroundColor(.white)
                            // Circle background and padding removed here
                    }
                    .padding(.top, 20)
                    
                    Text("Privacy Policy")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 25)
                .padding(.bottom, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                // MARK: - Content Section
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 25) {
                        Text("Last update: 2 March 2026")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text("We respect your privacy. This app securely handles your personal and medical information to provide better healthcare services.")
                            .font(.body.bold())
                            .foregroundColor(.primary)
                            .lineSpacing(4)

                        PolicySection(
                            title: "Information Collection",
                            content: "The Clinic Flow app collects essential data such as your name, contact details, and medical history to facilitate appointment booking and queue management."
                        )
                        
                        PolicySection(
                            title: "Data Security",
                            content: "Your data is encrypted and stored securely. We do not share your medical records with third-party advertisers. Access is strictly restricted to authorized clinic staff."
                        )
                        
                        PolicySection(
                            title: "Your Rights",
                            content: "You have the right to view, update, or request the deletion of your personal information at any time through the 'Personal Information' settings in your profile."
                        )
                        
                        PolicySection(
                            title: "Usage Policy",
                            content: "By continuing to use the app, you indicate your acceptance of these terms. We use anonymized data to improve clinic logistics and reduce patient wait times."
                        )
                    }
                    .padding(25)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .background(Color.white)
            }
        }
        .navigationBarHidden(true)
    }
}

// MARK: - Supporting Subview
struct PolicySection: View {
    let title: String
    let content: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .foregroundColor(.blue)
            
            Text(content)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineSpacing(6)
        }
    }
}
