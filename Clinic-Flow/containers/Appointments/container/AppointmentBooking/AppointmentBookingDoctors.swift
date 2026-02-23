import SwiftUI

struct AppointmentBookingMain: View {

    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Header Section
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Button(action: { dismiss() }){
                            Image(systemName: "arrow.left")
                        }
                        Text("Choose Doctor")
                            .font(.title.bold())
                        Text("Available Cardiology doctors?")
                            .font(.subheadline)
                    }
                    .foregroundColor(.black)
                }
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)

                // Content Section
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Image(systemName: "magnifying-glass")
                        Text("Search Doctors...")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)

                    ForEach(0..<4, id: \.self) { index in
                        HStack(spacing: 15) {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.gray.opacity(0.3))
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Dr. Michael Chen")
                                    .font(.headline)
                                Text("15 years experience")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                HStack(spacing: 8) {
                                    Text("Heart Disease")
                                        .font(.caption.bold())
                                        .padding(.horizontal, 12)
                                        .padding(.vertical, 4)
                                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))

                                    Text("Hypertension")
                                        .font(.caption.bold())
                                        .padding(.horizontal, 12)
                                        .padding(.vertical, 4)
                                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                                }

                                HStack(spacing: 8) {
                                    Image(systemName: "calendar")
                                        .foregroundColor(.gray)
                                    Text("Next Available: Feb 14, 2026")
                                        .font(.subheadline)
                                }
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                        )
                        .padding(.horizontal)
                        
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