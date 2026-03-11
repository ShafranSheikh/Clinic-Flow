import SwiftUI

struct ParkingReservationActivate: View {
    @Environment(\.dismiss) private var dismiss

    var onActivate: () -> Void

    var body: some View {
        VStack(spacing: 15) {
            Image(systemName: "car.side.fill")
                .font(.system(size: 30))
                .foregroundColor(.gray.opacity(0.2))
            VStack(spacing: 5) {
                Text("Not yet activated")
                    .font(.headline)
                    .foregroundColor(Color.black)
                Text(
                    "Session will activate automatially as you enter parking lot"
                )
                .font(.caption)
                .foregroundColor(Color.primary)
                .padding(.horizontal)

                Button(action: onActivate) {
                    Text("Activate Session")
                        .font(.subheadline.bold())
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 12)
                        .background(Color.orange)
                        .cornerRadius(50)
                }
            }
        }
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .stroke(style: StrokeStyle(lineWidth: 1.2, dash: [6]))
                .foregroundColor(Color.gray.opacity(0.5))
        )
        .padding(.horizontal)

        Text("Time remaining for automatic cancellation: 10 Minutes")
            .font(.caption)
            .foregroundColor(.gray)
    }
}
