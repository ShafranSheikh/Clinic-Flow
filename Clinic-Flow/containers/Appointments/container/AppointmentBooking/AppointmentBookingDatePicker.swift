import SwiftUI

struct AppointmentBookingDatePicker: View {

    @State private var selectedDateTime = Date()

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Header Section
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Button(action: { dismiss() }){
                            Image(systemName: "arrow.left")
                        }
                        Text("Pick Date & Time")
                            .font(.title.bold())
                        Text("Schedule your consultation at your convenience")
                            .font(.subheadline)
                    }
                    .foregroundColor(.black)
                }
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)

                Text("Select Date & Time")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.vertical, 10)
                    .padding(.horizontal)

                DatePicker(
                    "",
                    selection: $selectedDateTime,
                    in: Date()...,
                    displayedComponents: [.date]
                )
                .padding(.horizontal)
                .datePickerStyle(WheelDatePickerStyle())

                // usual rush hours for you to avoid
                Text("Usual Rush Hours")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                HStack(spacing: 15) {
                    Text("8:00 AM - 10:00 AM")
                        .font(.caption.bold())
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .background(Color.red.opacity(0.15))
                        .foregroundColor(.red)
                        .clipShape(Capsule())

                    Text("5:00 PM - 7:00 PM")
                        .font(.caption.bold())
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .background(Color.red.opacity(0.15))
                        .foregroundColor(.red)
                        .clipShape(Capsule())
                }

            }
        }
        // 1. Add a button that stays at the bottom of the screen
        .safeAreaInset(edge: .bottom) {
            if selectedDateTime > Date().addingTimeInterval(-60) { 
                Button(action: {
                    // Action to confirm
                }) {
                    Text("Confirm Appointment")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                .background(.ultraThinMaterial)
                .transition(.move(edge: .bottom).combined(with: .opacity)) 
            }
        }
        .animation(.spring(), value: selectedDateTime) 
    }
}