import SwiftUI

struct AppointmentsView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(1...5, id: \.self) { i in
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Patient \(i)")
                                .font(.headline)
                            Text("10:00 AM")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Image(systemName: "clock")
                            .foregroundColor(.blue)
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Appointments")
        }
    }
}

#Preview {
    AppointmentsView()
}
