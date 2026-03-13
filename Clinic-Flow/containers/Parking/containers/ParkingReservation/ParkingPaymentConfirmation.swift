//
//  ParkingPaymentConfirmation.swift
//  Clinic-Flow
//
//  Created by Bilaal Zuhry on 2026-03-13.
//
import SwiftUI

struct ParkingPaymentConfirmation: View {
    @State private var animateCheckmark = false
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "checkmark.circle.fill").font(.system(size: 80)).foregroundColor(.green)
            Text("Payment Confirmed!").font(.system(size: 26, weight: .bold)).multilineTextAlignment(.center)
            
            VStack(spacing: 20) {
                Text("Parking Details:").font(.headline).foregroundColor(.gray)
                VStack(spacing: 12) {
                    VStack(spacing: 2) {
                        Text("Spot").font(.caption).foregroundColor(.gray)
                        Text("No. 16").font(.system(size: 16, weight: .semibold))
                    }
                    VStack(spacing: 2) {
                        Text("Time In Parking").font(.caption).foregroundColor(.gray)
                        Text("2 Hours").font(.system(size: 16, weight: .semibold))
                    }
                    VStack(spacing: 2) {
                        Text("Payment").font(.caption).foregroundColor(.gray)
                        Text("Rs. 300").font(.system(size: 16, weight: .semibold))
                    }
                    Text("Paid").font(.headline).foregroundColor(.green)
                }
            }
            Text("Thank You And Take Care!").foregroundColor(.gray)
            Spacer()
            NavigationLink(destination: HomeView(isLoggedIn: .constant(true))) {
                Text("Back to Home").font(.headline).foregroundColor(.white).frame(maxWidth: .infinity).padding().background(Color.orange).cornerRadius(30)
            }
        }
        .padding(40)
        .background(Color(red: 0.98, green: 0.94, blue: 0.94).ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
    }
}
