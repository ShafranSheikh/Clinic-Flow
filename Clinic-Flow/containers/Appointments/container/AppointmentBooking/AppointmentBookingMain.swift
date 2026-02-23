import SwiftUI

struct PairItem: Identifiable {
    let id = UUID()
    let key: String
    let value: String
}

struct AppointmentBookingMain: View {
    @Environment(\.dismiss) private var dismiss

    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    let items = [
        PairItem(key: "Cardiology", value: "5 Doctors"),
        PairItem(key: "Dermatology", value: "2 Doctors"),
        PairItem(key: "General Practice", value: "3 Doctors"),
        PairItem(key: "Orthopedics", value: "4 Doctors")
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Header Section
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Button(action: { dismiss() }){
                            Image(systemName: "arrow.left")
                        }
                        Text("Select Speciality")
                            .font(.title.bold())
                        Text("What type of doctor do you need?")
                            .font(.subheadline)
                    }
                    .foregroundColor(.black)
                }
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)

                // Content Section
                Grid(horizontalSpacing: 10, verticalSpacing: 10) {
                    GridRow {
                        HStack {
                            Image(systemName: "magnifying-glass")
                            Text("Search Speciality...")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(8)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .gridCellColumns(2) // Spans across 2 columns [1]
                    }

                    ForEach(0..<items.count, id: \.self) { index in
                        GridRow {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.gray.opacity(0.3))
                            Text(items[index].0)
                                .font(.headline)
                            Text(items[index].1)
                                .foregroundColor(.secondary)
                        }
                        Divider() // Optional: add between rows
                    }
                }
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}