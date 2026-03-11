import SwiftUI

struct ParkingReservation: View {
    @Environment(\.dismiss) private var dismiss
    @State private var parkingStatus: String = "activate"

    var body: some View {
        if parkingStatus == "done" {
            ParkingReservationDetails(onDone: {
                    withAnimation { parkingStatus = "progress" }
                })
        } else {
            ScrollView {
                VStack(spacing: 0) {
                    // Header Section
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Button(action: { dismiss() }) {
                                Image(systemName: "arrow.left")
                            }
                            Text("Parking")
                                .font(.title.bold())
                            Text("Find and reserve your parking spot")
                                .font(.subheadline)
                        }
                        .foregroundColor(.white)
                    }
                    .frame(height: 230)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .background(Color.orange)
                }
                //Summary card
                VStack(spacing: 12) {
                    Image(systemName: "car.side.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.gray.opacity(0.6))

                    Text("Parking spot reserved")
                        .font(.headline)
                        .foregroundColor(.gray)

                    Text("No. 10")
                        .font(.system(size: 54, weight: .bold))
                        .foregroundColor(Color.orange)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 30)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
                .padding(.horizontal)
                .offset(y: -50)
                .padding(.bottom, -30)

                if parkingStatus == "activate" {
                    VStack(spacing: 12) {
                        NavigationLink(destination: Navigator()) {
                            Text("Navigate to spot")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.orange)
                                .cornerRadius(50)
                        }
                        .padding(.top, 5)
                        .padding(.horizontal)
                        Button(action: { dismiss() }) {
                            Text("Cancel")
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(50)
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.orange, lineWidth: 1)
                        )
                        .padding(.vertical, 5)
                        .padding(.horizontal)
                    }
                }
                VStack(alignment: .leading, spacing: 12) {
                    HStack(spacing: 10) {
                        Image(systemName: "star")
                            .font(.title3.bold())
                            .foregroundColor(.orange)

                        Text("Parking Tips")
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                    HStack(alignment: .center, spacing: 10) {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 6))
                        Text("First 30 minutes free for drop-offs")
                            .foregroundColor(Color.black)
                            .font(.footnote)
                        Spacer()
                    }
                    HStack(alignment: .center, spacing: 10) {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 6))
                        Text("Validate parking ticket at reception")
                            .foregroundColor(Color.black)
                            .font(.footnote)
                        Spacer()
                    }
                    HStack(alignment: .center, spacing: 10) {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 6))
                        Text("EV charging available in main parking")
                            .foregroundColor(Color.black)
                            .font(.footnote)
                        Spacer()
                    }
                    HStack(alignment: .center, spacing: 10) {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 6))
                        Text("Accessible spots near all elevators")
                            .foregroundColor(Color.black)
                            .font(.footnote)
                        Spacer()
                    }
                }
                .foregroundColor(.black)
                .padding()
                .background(Color.orange.opacity(0.1))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.vertical)

                VStack {
                    if parkingStatus == "activate" {
                        ParkingReservationActivate {
                            withAnimation { parkingStatus = "progress" }
                        }
                    } else if parkingStatus == "progress" {
                        ParkingReservationStarted {
                            withAnimation { parkingStatus = "done" }
                        }
                    }
                }
            }
            .ignoresSafeArea(edges: .top)
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ParkingReservation()
}
