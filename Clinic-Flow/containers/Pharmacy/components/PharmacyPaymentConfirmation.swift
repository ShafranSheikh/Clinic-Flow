
import SwiftUI

struct PharmacyPaymentConfirmation: View {
    @State private var animateCheckmark = false
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "checkmark.circle.fill").font(.system(size: 80)).foregroundColor(.green)
            Text("Payment Confirmed!").font(.system(size: 26, weight: .bold)).multilineTextAlignment(.center)
            
            VStack(spacing: 20) {
                Text("Order Details:").font(.headline).foregroundColor(.gray)
                VStack(spacing: 12) {
                    VStack(spacing: 2) {
                        Text("Customer Name").font(.caption).foregroundColor(.gray)
                        Text("ABC Perera").font(.system(size: 16, weight: .semibold))
                    }
                    VStack(spacing: 2) {
                        Text("Medicine").font(.caption).foregroundColor(.gray)
                        Text("1 x Medicine 1").font(.system(size: 16, weight: .semibold))
                        Text("3 x Medicine 2").font(.system(size: 16, weight: .semibold))
                        Text("1 x Medicine 3").font(.system(size: 16, weight: .semibold))
                    }
                    VStack(spacing: 2) {
                        Text("Department").font(.caption).foregroundColor(.gray)
                        Text("Pharmacy").font(.system(size: 16, weight: .semibold))
                    }
                    VStack(spacing: 2) {
                        Text("Payment").font(.caption).foregroundColor(.gray)
                        Text("Rs. 3000").font(.system(size: 16, weight: .semibold))
                    }
                    Text("Paid").font(.headline).foregroundColor(.green)
                }
            }
            Text("Thank You And Take Care!").foregroundColor(.gray)
            Spacer()
            NavigationLink(destination: Pharmacy()) {
                Text("Back to Pharmacy").font(.headline).foregroundColor(.white).frame(maxWidth: .infinity).padding().background(Color.blue).cornerRadius(30)
            }
        }
        .padding(40)
        .background(Color(red: 0.98, green: 0.94, blue: 0.94).ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
    }
}
