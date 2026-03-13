import SwiftUI

struct OtpConfirmation: View {
    @Binding var isLoggedIn: Bool
    @Environment(\.dismiss) var dismiss

    @State private var otpInput = ""
    @State private var showAlert = false
    let correctOTP = "1234"

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Image("loginformbackground")
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .clipped()

                    Color.blue.frame(height: 100)
                }
                .ignoresSafeArea()

                VStack {
                    Spacer()

                    VStack(alignment: .leading, spacing: 20) {

                        VStackLayout(alignment: .leading, spacing: 8) {
                            Text("OTP Sent")
                                .font(.system(size: 32, weight: .bold))
                            Text("Enter the OTP sent to your phone number")
                                .font(.subheadline)
                        }
                        .foregroundColor(.white)
                        .padding(.top, 40)

                        VStack(alignment: .leading, spacing: 10) {
                            Text("OTP").foregroundColor(.white).font(
                                .system(size: 16, weight: .medium)
                            )

                            TextField("", text: $otpInput)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }

                        Button(action: {
                            if otpInput == correctOTP {
                                isLoggedIn = true
                            } else {
                                showAlert = true  // Trigger the popup
                            }
                        }) {
                            Text("Verify")
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(30)
                        }

                        Button("Go Back") {
                            dismiss()
                        }
                        .padding(.bottom, 30)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.white)
                    }
                    .padding(.horizontal, 30)
                    .background(Color.blue)
                    .cornerRadius(40, corners: [.topLeft, .topRight])  // Custom corner radius
                    .alert("Invalid Code", isPresented: $showAlert) {
                        Button("Try Again", role: .cancel) {}
                    } message: {
                        Text(
                            "The OTP you entered is incorrect. Please check and try again."
                        )
                    }
                }
                .ignoresSafeArea(edges: .bottom)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
