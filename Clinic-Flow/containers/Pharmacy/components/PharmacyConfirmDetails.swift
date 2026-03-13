//
//  PharmacyConfirmDetails.swift
//  Clinic-Flow
//
//  Created by Bilaal Zuhry on 2026-03-13.
//

import SwiftUI

struct PharmacyConfirmDetails: View {
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
                            Text("Pay your Pharmacy bill here")
                                .font(.subheadline)
                        }
                        .foregroundColor(.white)
                    }
                    .frame(height: 130)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 20)
                    .background(Color.blue)
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
                                Text("Customer Name:")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("Abc Perera")
                                    .foregroundColor(.primary)
                            }
                            HStack {
                                Text("Order Details")
                                    .foregroundColor(.secondary)
                                Spacer()
                            }
                            HStack {
                                Text("Medicine 1:")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("1 x Rs. 500")
                                    .foregroundColor(.primary)
                            }
                            HStack {
                                Text("Medicine 2:")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("3 x Rs. 500")
                                    .foregroundColor(.primary)
                            }
                            HStack {
                                Text("Medicine 3:")
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("1 x Rs. 1000")
                                    .foregroundColor(.primary)
                            }

                            Divider().padding(.vertical, 5)
                            HStack {
                                Text("Total")
                                    .font(.title2.bold())
                                Spacer()
                                Text("3,000.00")
                                    .font(.title2.bold())
                            }
                        }
                        .font(.body)
                        NavigationLink(
                            destination: PharmacyPaymentConfirmation()
                        ) {
                            Text("Pay by Cash")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(50)
                        }
                        .padding(.top, 10)
                        NavigationLink(destination: PharmacyMakePayment()) {
                            Text("Pay by Card")
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
