import SwiftUI

struct LabTests: View{
    @Environment(\.dismiss) private var dismiss
    @State private var searchText = ""
    var body: some View {
        ScrollView{
            VStack(spacing:0){
                //header
                VStack(alignment: .leading) {
                    Spacer()
                    VStack(alignment: .leading) {
                        Button(action: { dismiss() }){
                            Image(systemName: "arrow.left")
                        }
                        Text("Lab Test")
                            .font(.title.bold())
                        Text("Select your lab test")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                }
                .frame(height: 170)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.vertical, 20)
                .background(Color.green)
                .padding(.bottom, 30)
                
                //Search
                HStack(spacing: 12) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search tests...", text: $searchText)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.green.opacity(0.2), lineWidth: 1)
                    )
                    .padding(.horizontal)
                
                //content
                VStack(spacing: 12){
                    
                    NavigationLink(destination: LabBookingConfirmation()) {
                            HStack {
                                Text("Blood Test")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(radius: 0.5)
                        }
                    //button 2
                    Button(action: { }) {
                            HStack {
                                Text("MRI Scan")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(radius: 0.5)
                        }
                    //button3
                    Button(action: { }) {
                            HStack {
                                Text("Ultrasound Scan")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(radius: 0.5)                        }
                    //button 4
                    Button(action: { }) {
                            HStack {
                                Text("X-Ray Scan")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(radius: 0.5)                        }
                    //button 5
                    Button(action: { }) {
                            HStack {
                                Text("Urine Test")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(radius: 0.5)                        }
                    //button 6
                    Button(action: { }) {
                            HStack {
                                Text("CT Scan")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(radius: 0.5)
                        }
                }
                .padding(.top, 30)
                .padding(.horizontal)

            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}


