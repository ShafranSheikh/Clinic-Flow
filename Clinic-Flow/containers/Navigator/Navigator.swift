import SwiftUI

struct Navigator: View{
    @Environment(\.dismiss) private var dismiss
    @State private var searchText = ""
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                //header
                VStack(alignment: .leading) {
                    Spacer()
                    VStack(alignment: .leading) {
                        Button(action: { dismiss() }){
                            Image(systemName: "arrow.left")
                        }
                        Text("Indoor Navigation ")
                            .font(.title.bold())
                        Text("Track your path")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                }
                .frame(height: 130)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.vertical, 20)
                .background(Color.blue)
                .padding(.bottom, 20)
                
                
                //Search
                HStack(spacing: 12) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search department or room.....", text: $searchText)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.blue.opacity(0.2), lineWidth: 1)
                    )
                    .padding(.horizontal)
                
                    VStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.gray.opacity(0.1))
                            .frame(height: 200)
                            .overlay(Text("Indoor Map").foregroundColor(.gray))
                    }
                    .padding()
                
                VStack(spacing: 15) {
                    HStack(spacing: 15) {
                        Image(systemName: "location.fill")
                            .foregroundColor(.blue)
                            .padding(12)
                            .background(Color.blue.opacity(0.1))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text("To Reception Desk")
                                .font(.headline)
                            Text("45 meters • 2 Min walk")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Text("Turn left, follow the blue line")
                                .font(.caption)
                                .foregroundColor(.blue)
                        }

                        Spacer()

                        // Start Button
                        Button(action: { print("Navigation Started") }) {
                            Text("Start")
                                .font(.subheadline.bold())
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 8)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(25)
                    .shadow(radius: 0.5)
                    .padding(.horizontal)
                }
                .padding(.top, 10)
                
                Text("Quick Access")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 15)
                
                VStack(alignment: .leading , spacing: 12){
                    HStack(spacing: 12) {
                            //  Card 1
                            VStack(alignment: .center, spacing: 10) {
                                Text("Cardiology")
                                    .font(.caption2.bold())
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Color.blue)
                                    .cornerRadius(8)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                
                                VStack(alignment: .center, spacing: 2) {
                                    Text("2nd Floor").font(.subheadline.bold())
                                    Text("Rooms 201-205").font(.caption).foregroundColor(.secondary)
                                }
                                
                                Button(action: {}) {
                                    Label("Navigate", systemImage: "paperplane.fill")
                                        .font(.caption.bold())
                                        .frame(maxWidth: .infinity)
                                        .padding(.vertical, 8)
                                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.2)))
                                }
                                .foregroundColor(.black)
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.05), radius: 5)
                            
                            // Card 2
                            VStack(alignment: .center, spacing: 10) {
                                Text("Radiology")
                                    .font(.caption2.bold())
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Color.orange)
                                    .cornerRadius(8)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                
                                VStack(alignment: .center, spacing: 2) {
                                    Text("1st Floor").font(.subheadline.bold())
                                    Text("Rooms 102-110").font(.caption).foregroundColor(.secondary)
                                }
                                
                                Button(action: {}) {
                                    Label("Navigate", systemImage: "paperplane.fill")
                                        .font(.caption.bold())
                                        .frame(maxWidth: .infinity)
                                        .padding(.vertical, 8)
                                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.2)))
                                }
                                .foregroundColor(.black)
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.05), radius: 5)
                        }
                    HStack(){
                        //card 3
                        VStack(alignment: .center, spacing: 10) {
                                    Text("Laboratory")
                                        .font(.caption2.bold())
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 8)
                                        .padding(.vertical, 4)
                                        .background(Color.green)
                                        .cornerRadius(8)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                    
                                    VStack(alignment: .center, spacing: 2) {
                                        Text("Ground Floor").font(.subheadline.bold())
                                        Text("Wing B").font(.caption).foregroundColor(.secondary)
                                    }
                                    
                                    Button(action: {}) {
                                        Label("Navigate", systemImage: "paperplane.fill")
                                            .font(.caption.bold())
                                            .frame(maxWidth: .infinity)
                                            .padding(.vertical, 8)
                                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.2)))
                                    }
                                    .foregroundColor(.black)
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: .black.opacity(0.05), radius: 5)
                        //card 4
                        VStack(alignment: .center, spacing: 10) {
                                    Text("Emergency")
                                        .font(.caption2.bold())
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 8)
                                        .padding(.vertical, 4)
                                        .background(Color.red)
                                        .cornerRadius(8)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                    
                                    VStack(alignment: .center, spacing: 2) {
                                        Text("Ground Floor").font(.subheadline.bold())
                                        Text("Main Entrance").font(.caption).foregroundColor(.secondary)
                                    }
                                    
                                    Button(action: {}) {
                                        Label("Navigate", systemImage: "paperplane.fill")
                                            .font(.caption.bold())
                                            .frame(maxWidth: .infinity)
                                            .padding(.vertical, 8)
                                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.2)))
                                    }
                                    .foregroundColor(.black)
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: .black.opacity(0.05), radius: 5)
                    }
                }
                .padding(.horizontal)
                
                Text("Select Your Floor")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 15)
                    
                
                HStack(){
                    Text("Ground")
                        .padding()
                        .background(Color.white)
                        .shadow(radius: 0.5)
                        .cornerRadius(15)
                        .shadow(radius: 0.5)
                    Spacer()
                    Text("1st")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .shadow(radius: 0.5)
                        .cornerRadius(15)
                        .shadow(radius: 0.5)
                    Spacer()
                    Text("2nd")
                        .padding()
                        .background(Color.white)
                        .shadow(radius: 0.5)
                        .cornerRadius(15)
                        .shadow(radius: 0.5)
                    Spacer()
                    Text("3rd")
                        .padding()
                        .background(Color.white)
                        .shadow(radius: 0.5)
                        .cornerRadius(15)
                        .shadow(radius: 0.5)
                }
                .padding(.horizontal)
                
            }
            
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}

