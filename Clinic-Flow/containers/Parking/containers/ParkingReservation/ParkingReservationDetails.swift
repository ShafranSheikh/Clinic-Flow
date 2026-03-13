import SwiftUI

struct ParkingReservationDetails: View {
    @Environment(\.dismiss) var dismiss
    var onDone: () -> Void
    var body: some View {
        NavigationStack {

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Button(action: { onDone() }) {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.black)
                    }

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Parking Payment").font(
                            .system(size: 28, weight: .bold)
                        )
                        Text("Review your parking amount").font(.subheadline)
                            .foregroundColor(.gray)
                    }

                    VStack(alignment: .leading, spacing: 16) {
                        Text("Parking Details").font(
                            .system(size: 18, weight: .bold)
                        )
                        VStack(alignment: .leading, spacing: 2) {
                            Text("John Doe").font(
                                .system(size: 17, weight: .bold)
                            )
                            Text("Parked in main parking spot No. 16").font(
                                .subheadline
                            )
                            Text("Rs. 150/hour").font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Divider()
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Image(systemName: "calendar").foregroundColor(
                                    .gray
                                ).frame(width: 20)
                                VStack(alignment: .leading) {
                                    Text("Date").foregroundColor(.gray)
                                    Spacer()
                                    Text("Feb 24, 2026").bold()
                                }
                            }.font(.system(size: 14))
                            HStack {
                                HStack {
                                    Image(systemName: "clock").foregroundColor(
                                        .gray
                                    ).frame(width: 20)
                                    VStack(alignment: .leading) {
                                        Text("Time of Entry").foregroundColor(
                                            .gray
                                        )
                                        Spacer()
                                        Text("9:00AM").bold()
                                    }
                                }
                                Spacer()
                                HStack {
                                    Image(systemName: "clock").foregroundColor(
                                        .gray
                                    ).frame(width: 20)
                                    VStack(alignment: .leading) {
                                        Text("Time of Exit").foregroundColor(
                                            .gray
                                        )
                                        Spacer()
                                        Text("11:00AM").bold()
                                    }
                                }
                            }.font(.system(size: 14))
                            Divider()
                        }
                        VStack(alignment: .leading,spacing: 12) {
                            Text("Amount To Pay").font(
                                .system(size: 18, weight: .bold)
                            )
                            HStack {
                                Text("Amount Per Hour").foregroundColor(
                                    .black
                                )
                                Spacer()
                                Text("Rs. 50.Hour").bold()
                            }
                            HStack {
                                Text("Hours Parked").foregroundColor(
                                    .black
                                )
                                Spacer()
                                Text("2 Hours").bold()
                            }
                            HStack {
                                Text("Total Payable").foregroundColor(
                                    .black
                                )
                                Spacer()
                                Text("Rs. 300").bold()
                            }
                        }
                        HStack(alignment: .center, spacing: 10) {
                            // Navigate Button
                            NavigationLink(
                                destination: ParkingPaymentConfirmation()
                            ) {
                                Text("Pay By Cash")
                                    .font(.caption.bold())
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 8)
                                    .overlay(
                                        Capsule().stroke(
                                            Color.gray.opacity(0.5),
                                            lineWidth: 1
                                        )
                                    )
                            }
                            .foregroundColor(.black)

                            // Reserve Button
                            NavigationLink(
                                destination: ParkingMakePayment()
                            ) {
                                Text("Pay By Card")
                                    .font(.caption.bold())
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 8)
                                    .background(Color.orange)
                                    .cornerRadius(20)
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding(20).background(Color.white)
                    .cornerRadius(15).shadow(
                        color: .black.opacity(0.05),
                        radius: 10
                    )
                }
                .padding(24)
            }
            .background(
                Color(red: 0.98, green: 0.98, blue: 0.98).ignoresSafeArea()
            )
            .toolbar(.hidden, for: .navigationBar)
            .navigationBarBackButtonHidden(true)
        }
    }
}
