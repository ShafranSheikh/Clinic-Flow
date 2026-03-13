import SwiftUI

struct LabBookingPayment: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    //header
                    VStack(alignment: .leading) {
                        Spacer()
                        VStack(alignment: .leading) {
                            Button(action: { dismiss() }) {
                                Image(systemName: "arrow.left")
                            }
                            Text("Make Payment")
                                .font(.title.bold())
                            Text("Easily pay your lab appointment bill here")
                                .font(.subheadline)
                        }
                        .foregroundColor(.white)
                    }
                    .frame(height: 130)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 20)
                    .background(Color.green)
                    .padding(.bottom, 30)

                    VStack(alignment: .leading, spacing: 20) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Clinic Flow")
                                .font(.title.bold())
                            Text("Invoice")
                                .font(.title3)
                        }
                        .padding(.bottom, 10)

                        HStack {
                            Text("Invoice No")
                                .font(.headline)
                            Spacer()
                            Text("#INV 0065 0053")
                                .font(.headline)
                        }
                        VStack(spacing: 12) {
                            HStack {
                                Text("Patient Name:")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("Abc Perera")
                                    .foregroundColor(.primary)
                            }

                            HStack {
                                Text("Patient ID:")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("CLN-0458")
                                    .foregroundColor(.primary)
                            }
                            HStack {
                                Text("Test Name:")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("Blood Test")
                                    .foregroundColor(.primary)
                            }
                            HStack {
                                Text("Department:")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("Laboratory")
                                    .foregroundColor(.primary)
                            }
                            HStack {
                                Text("Appointment Date:")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("21 Feb 2026")
                                    .foregroundColor(.primary)
                            }

                            Divider().padding(.vertical, 5)
                            HStack {
                                Text("Total")
                                    .font(.title2.bold())
                                Spacer()
                                Text("1,500.00")
                                    .font(.title2.bold())
                            }
                        }
                        .font(.body)
                        NavigationLink(destination: LabPaymentConfirmation()) {
                            Text("Pay by Cash")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .cornerRadius(50)
                        }
                        .padding(.top, 10)
                        NavigationLink(destination: LabMakePayment()) {                            Text("Pay by Card")
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(
                                            Color.gray.opacity(0.3),
                                            lineWidth: 1
                                        )
                                )
                        }
                    }
                    .padding(25)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 0.5)
                    .padding(.horizontal)
                }
            }
            .ignoresSafeArea(edges: .top)
            .navigationBarBackButtonHidden(true)
        }
    }
}
