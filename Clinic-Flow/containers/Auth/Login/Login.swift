import SwiftUI

struct Login: View {
    @Binding var isLoggedIn: Bool

    @State private var phoneNumber: String = ""
    @State private var navigateToOTP = false

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
                            Text("Welcome Back!")
                                .font(.system(size: 32, weight: .bold))
                            Text("Sign In to access your journey.")
                                .font(.subheadline)
                        }
                        .foregroundColor(.white)
                        .padding(.top, 40)

                        VStack(spacing: 15) {
                            SocialButton(
                                isLoggedIn: $isLoggedIn,
                                icon: "apple.logo",
                                title: "Sign In with Apple"
                            )
                            SocialButton(
                                isLoggedIn: $isLoggedIn,
                                icon: "g.circle.fill",
                                title: "Sign In with Google"
                            )
                        }

                        HStack {
                            Rectangle().frame(height: 1).opacity(0.3)
                            Text("or continue with").font(.caption).opacity(0.7)
                            Rectangle().frame(height: 1).opacity(0.3)
                        }
                        .foregroundColor(.white)
                        .padding(.vertical, 10)

                        VStack(alignment: .leading, spacing: 10) {
                            Text("Phone Number").foregroundColor(.white).font(
                                .system(size: 16, weight: .medium)
                            )

                            TextField("", text: $phoneNumber)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }

                        Button(action: {
                            print("Sending OTP to \(phoneNumber)")
                            navigateToOTP = true
                        }) {
                            Text("Send OTP")
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(30)
                        }
                        .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 30)
                    .background(Color.blue)
                    .cornerRadius(40, corners: [.topLeft, .topRight])  // Custom corner radius
                }
                .ignoresSafeArea(edges: .bottom)
                .navigationDestination(isPresented: $navigateToOTP) {
                    OtpConfirmation(isLoggedIn: $isLoggedIn)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SocialButton: View {
    @Binding var isLoggedIn: Bool

    let icon: String
    let title: String
    @State private var navigateToOTP = false

    var body: some View {
        Button(action: {
            isLoggedIn = true
        }) {
            HStack {
                Image(systemName: icon)
                Text(title)
                    .fontWeight(.medium)
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.black.opacity(0.3))
            .cornerRadius(30)
        }
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
