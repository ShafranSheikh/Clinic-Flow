import SwiftUI

struct OrderProgress: View {
    var onComplete: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                // From PharmacyActive.png, showing "In Progress" status
                Text("Order Status").font(.title3.bold())
                Spacer()
                Button(action: onComplete) {
                    Text("In Progress")
                        .font(.caption2.bold())
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.green.opacity(0.1))
                        .foregroundColor(.green)
                        .clipShape(Capsule())
                }
            }

            HStack(spacing: 15) {
                Image(systemName: "clock.fill")  // Image still uses systemName
                    .padding(12)
                    .background(Color.blue.opacity(0.1))
                    .clipShape(Circle())
                    .foregroundColor(.blue)

                VStack(alignment: .leading) {
                    Text("Estimated Wait").font(.subheadline).foregroundColor(
                        .secondary
                    )
                    Text("15 - 20 minutes").font(.body.bold())
                }
            }

            Text("Your order is being prepared. Please be ready to collect it.")
                .font(.subheadline)
                .foregroundColor(.secondary)

            NavigationLink(destination: Navigator())
            {
                Label("Navigate To Pharmacy", systemImage: "location.fill")
                    .font(.subheadline.bold())
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(50)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 5)
        .padding(.horizontal)
    }
}
