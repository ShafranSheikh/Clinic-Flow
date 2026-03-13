import SwiftUI
struct OrderCompleted: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Order Status").font(.title3.bold())
                Spacer()
                Text("Completed")
                    .font(.caption2.bold())
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color.blue.opacity(0.1))
                    .foregroundColor(.blue)
                    .clipShape(Capsule())
            }
            
            HStack(spacing: 15) {
                Image(systemName: "checkmark.circle.fill")
                    .padding(12)
                    .background(Color.green.opacity(0.1))
                    .clipShape(Circle())
                    .foregroundColor(.green)
                
                VStack(alignment: .leading) {
                    Text("Ready For Pickup").font(.subheadline).foregroundColor(.black)
                }
            }
            
            VStack(spacing: 10) {
                NavigationLink(destination: Navigator()) {
                    Text("Navigate to Pharmacy")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(50)
                }
                .padding(.top, 5)
                NavigationLink(destination: PharmacyConfirmDetails()) {
                    Text("Make payment")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(50)
                }
                .padding(.top, 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.blue, lineWidth: 1)
                )
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 5)
        .padding(.horizontal)
    }
}
