import SwiftUI
struct ParkingOption: View {
    let title: String
    let location: String
    let spots: Int
    let price: String
    let tags: [String]
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 12) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(title)
                            .font(.headline)
                        
                        Label(location, systemImage: "mappin.and.ellipse")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        HStack {
                            ForEach(tags, id: \.self) { tag in
                                Text(tag)
                                    .font(.system(size: 10, weight: .medium))
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .overlay(
                                        Capsule().stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                    )
                            }
                        }
                    }
                    
                    Spacer()
                    
                    // Spots Remaining Badge
                    VStack {
                        Text("\(spots)")
                            .font(.title3.bold())
                        Text("Spots Remaining")
                            .font(.system(size: 8))
                    }
                    .padding(8)
                    .background(Color.orange.opacity(0.1))
                    .foregroundColor(.orange)
                    .cornerRadius(10)
                }
            }
            .padding()
            
            Divider()

            HStack {
                Text(price)
                    .font(.subheadline.bold())
                
                Spacer()
                
                HStack(spacing: 10) {
                    // Navigate Button
                    Button(action: {}) {
                        Label("Navigate", systemImage: "paperplane")
                            .font(.caption.bold())
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .overlay(Capsule().stroke(Color.gray.opacity(0.5), lineWidth: 1))
                    }
                    .foregroundColor(.black)
                    
                    // Reserve Button
                        NavigationLink(destination: ParkingReservation()) {
                            Text("Reserve")
                                .font(.caption.bold())
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 8)
                                .background(Color.orange)
                                .cornerRadius(20)
                        }
                }
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}
