import SwiftUI

struct ParkingReservationDetails: View {
    @Environment(\.dismiss) var dismiss
    var onDone : () -> Void
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Button(action: { onDone() }) {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(.black)
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Parking Payment").font(.system(size: 28, weight: .bold))
                    Text("Review your parking amount").font(.subheadline).foregroundColor(.gray)
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Parking Details").font(.system(size: 18, weight: .bold))
                    HStack(spacing: 15) {
                        
                    }
                    Divider()
                    VStack(spacing: 12) {
                        
                    }
                }
                .padding(20).background(Color.white).cornerRadius(15).shadow(color: .black.opacity(0.05), radius: 10)
            }
            .padding(24)
        }
        .background(Color(red: 0.98, green: 0.98, blue: 0.98).ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
    }
}
