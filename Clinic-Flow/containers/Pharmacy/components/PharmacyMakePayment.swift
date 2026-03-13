
import SwiftUI

struct PharmacyMakePayment: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var selectedCard = "MasterCard"
    @State private var holderName = ""
    @State private var cardNumber = ""
    @State private var expiry = ""
    @State private var cvv = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                Button(action: { dismiss() }) {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(.black)
                }
                Text("Select a Payment Method").font(.system(size: 24, weight: .bold))
                
                HStack(spacing: 15) {
                    VStack(spacing: 8) {
                       
                        Image("MasterCard")
                            .resizable().scaledToFit().frame(width: 40, height: 25)
                        Text("MasterCard").font(.system(size: 10, weight: .medium)).foregroundColor(selectedCard == "MasterCard" ? .blue : .gray)
                    }
                    .frame(width: 90, height: 75).background(Color.white).cornerRadius(12)
                    .overlay(RoundedRectangle(cornerRadius: 12).stroke(selectedCard == "MasterCard" ? Color.blue : Color.gray.opacity(0.1), lineWidth: 2))
                    .onTapGesture {
                        selectedCard = "MasterCard"
                    }
                    VStack(spacing: 8) {
                       
                        Image("Visa")
                            .resizable().scaledToFit().frame(width: 40, height: 25)
                        Text("Visa").font(.system(size: 10, weight: .medium)).foregroundColor(selectedCard == "Visa" ? .blue : .gray)
                    }
                    .frame(width: 90, height: 75).background(Color.white).cornerRadius(12)
                    .overlay(RoundedRectangle(cornerRadius: 12).stroke(selectedCard == "Visa" ? Color.blue : Color.gray.opacity(0.1), lineWidth: 2))
                    .onTapGesture {
                        selectedCard = "Visa"
                    }
                    VStack(spacing: 8) {
                       
                        Image("ApplePay")
                            .resizable().scaledToFit().frame(width: 40, height: 25)
                        Text("Apple Pay").font(.system(size: 10, weight: .medium)).foregroundColor(selectedCard == "ApplePay" ? .blue : .gray)
                    }
                    .frame(width: 90, height: 75).background(Color.white).cornerRadius(12)
                    .overlay(RoundedRectangle(cornerRadius: 12).stroke(selectedCard == "ApplePay" ? Color.blue : Color.gray.opacity(0.1), lineWidth: 2))
                    .onTapGesture {
                        selectedCard = "ApplePay"
                    }
                }
                .frame(maxWidth: .infinity)
                
                VStack(spacing: 18) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Cardholder Name").font(.system(size: 14, weight: .bold))
                        TextField("John Doe", text: $holderName)
                            .padding(14).background(Color.white).cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.1), lineWidth: 1))
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Card Number").font(.system(size: 14, weight: .bold))
                        TextField("XXXX XXXX XXXX XXXX", text: $cardNumber)
                            .keyboardType(.numberPad).padding(14).background(Color.white).cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.1), lineWidth: 1))
                    }
                    HStack(spacing: 15) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Expires").font(.system(size: 14, weight: .bold))
                            TextField("MM/YY", text: $expiry)
                                .keyboardType(.numberPad).padding(14).background(Color.white).cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.1), lineWidth: 1))
                        }
                        VStack(alignment: .leading, spacing: 8) {
                            Text("CVV").font(.system(size: 14, weight: .bold))
                            TextField("565", text: $cvv)
                                .keyboardType(.numberPad).padding(14).background(Color.white).cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.1), lineWidth: 1))
                        }
                    }
                }
                
                Spacer(minLength: 50)
                
                NavigationLink(destination: PharmacyPaymentConfirmation()) {
                    Text("Make Payment").font(.headline).foregroundColor(.white).frame(maxWidth: .infinity).padding(.vertical, 18).background(Color.blue).cornerRadius(30)
                }
            }
            .padding(25)
        }
        .background(Color(white: 0.97).ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
    }
}
