import SwiftUI
struct TimeSlotButton: View {
    let time: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(time)
                .font(.system(size: 14, weight: .medium))
                .frame(maxWidth: .infinity) // Ensures all buttons in the HStack are equal width
                .padding(.vertical, 12)
                .background(isSelected ? Color.green : Color.white)
                .foregroundColor(isSelected ? .white : .black)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.2), lineWidth: isSelected ? 0 : 1)
                )
        }
    }
}
