
import SwiftUI

struct HelpCenterView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // MARK: - Header Section
            VStack(alignment: .leading, spacing: 15) {
                // Bold arrow.left back button
                Button(action: { dismiss() }) {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(.white)
                }
                .padding(.top, 60)
                
                Text("Help Center")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 25)
            .padding(.bottom, 30)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.blue)
            
            // MARK: - FAQ ScrollView
            ScrollView {
                VStack(alignment: .leading, spacing: 25) {
                    FAQItem(q: "How do I book an appointment?",
                            a: "Navigate to the 'Appointments' tab, search for your preferred doctor or specialty, select an available time slot, and confirm your booking.")
                    
                    FAQItem(q: "How can I cancel an appointment?",
                            a: "Go to 'My Appointments' from your dashboard, select the specific booking you wish to cancel, and tap the 'Cancel Appointment' button.")
                    
                    FAQItem(q: "Why was my payment declined?",
                            a: "This may occur due to insufficient funds, expired cards, or bank restrictions. Please check your card details or contact your bank for further assistance.")
                    
                    FAQItem(q: "What should I do in a medical emergency?",
                            a: "Please do not use the app for life-threatening emergencies. Call our 24/7 Emergency Hotline immediately or visit the nearest hospital.")
                    
                    FAQItem(q: "How can I update my personal information?",
                            a: "Go to your Profile and select 'Personal Information'. You can update your contact details and address directly from that screen.")
                    
                    FAQItem(q: "Is my medical data secure?",
                            a: "Yes, Clinic Flow uses end-to-end encryption to ensure your personal health records and appointment history are kept private and secure.")
                }
                .padding(25)
            }
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.top)
        .background(Color.white)
    }
}

struct FAQItem: View {
    let q: String
    let a: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(q)
                .font(.headline)
                .foregroundColor(.blue)
            
            Text(a)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineSpacing(2)
            
            Divider()
                .padding(.top, 10)
        }
    }
}

#Preview {
    HelpCenterView()
}
