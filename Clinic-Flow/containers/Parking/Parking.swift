import SwiftUI

struct Parking: View{
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                // Header Section
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Button(action: { dismiss() }){
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
                
                Text("Total Spots Available")
                    .font(.headline)
                    .foregroundColor(.gray)
                
                Text("45")
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
            
            VStack(spacing: 20) {
                ParkingOption(
                    title: "Main Parking (Ground Level)",
                    location: "50m from entrance",
                    spots: 15,
                    price: "Rs. 50/hour",
                    tags: ["EV Charging", "Accessible"]
                )
                
                ParkingOption(
                    title: "Underground Parking",
                    location: "Elevator to lobby",
                    spots: 20,
                    price: "Rs. 30/hour",
                    tags: ["24/7 Security", "Accessible"]
                )
                
                ParkingOption(
                    title: "Visitor Parking",
                    location: "100m from entrance",
                    spots: 10,
                    price: "Rs. 30/hour",
                    tags: ["Short-term", "Accessible"]
                )
            }
            .padding(.horizontal)
            .padding(.top, 20) // Give space after the floating Summary Card
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}
