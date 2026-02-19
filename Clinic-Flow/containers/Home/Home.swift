import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack { // Keep this for navigation features
            ScrollView {
                VStack(spacing: 0) {
                    VStack(alignment: .leading) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Good morning")
                                    .font(.subheadline)
                                Text("Jhon Doe")
                                    .font(.title.bold())
                            }
                            .foregroundColor(.white)
                            
                            Spacer()
                            
                            HStack(spacing: 15) {
                                Image(systemName: "bell.fill")
                                    .padding(10)
                                    .background(.white.opacity(0.2))
                                    .clipShape(Circle())
                                
                                Image(systemName: "person.fill")
                                    .padding(10)
                                    .background(.white.opacity(0.2))
                                    .clipShape(Circle())
                            }
                            .foregroundColor(.white)
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)
                        .padding(.bottom, 40)
                    }
                    .frame(height: 280)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)

                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Active Visit")
                                    .font(.title2.bold())
                                Text("General Consultation")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            Text("In-progress")
                                .font(.caption2.bold())
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5)
                                .background(Color.green.opacity(0.15))
                                .foregroundColor(.green)
                                .clipShape(Capsule())
                        }
                        HStack(spacing: 15) {
                            Image(systemName: "clock.fill")
                                .font(.title3)
                                .foregroundColor(.blue)
                                .padding(12)
                                .background(Color.blue.opacity(0.1))
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Estimated Wait")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text("15 - 20 minutes")
                                    .font(.body.bold())
                            }
                            
                            Spacer()
                            
                            Text("7")
                                .font(.system(size: 45, weight: .bold, design: .rounded))
                                .foregroundColor(.blue)
                        }
                        HStack(spacing: 15) {
                            Image(systemName: "location.north.fill")
                                .font(.title3)
                                .foregroundColor(.green)
                                .padding(12)
                                .background(Color.green.opacity(0.1))
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Current Location")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text("Waiting Area B, 2nd Floor")
                                    .font(.body.bold())
                            }
                        }
                        Button(action: {
                            // Navigation logic goes here later
                        }) {
                            Text("View Visit Details")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(50)
                        }
                        .padding(.top, 5)
                    }
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.08), radius: 10, x: 0, y: 5)
                    .padding(.horizontal)
                    .offset(y: -60)
                    
                    Text("Quick Actions")
                        .font(.title2.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                    Spacer()
                    HStack(spacing: 15){
                        //box button 1
                        VStack(){
                            VStack(){
                                Image(systemName: "calendar")
                                    .font(.title)
                                    .foregroundColor(.blue)
                                    .padding(12)                            }
                            .frame(width: 65, height:65)
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(12)
                            .frame(maxWidth: .infinity)
                            Text("Book")
                        }
                        //box button 2
                        VStack(){
                            VStack(){
                                Image(systemName: "location.fill")
                                    .font(.title)
                                    .foregroundColor(.green)
                                    .padding(12)                            }
                            .frame(width: 65, height:65)
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(12)
                            .frame(maxWidth: .infinity)
                            Text("Book")
                        }
                        //box button 3
                        VStack(){
                            VStack(){
                                Image(systemName: "doc.text.fill")
                                    .font(.title)
                                    .foregroundColor(.purple)
                                    .padding(12)                            }
                            .frame(width: 65, height:65)
                            .background(Color.purple.opacity(0.1))
                            .cornerRadius(12)
                            .frame(maxWidth: .infinity)
                            Text("Book")
                        }
                        //box button 4
                        VStack(){
                            VStack(){
                                Image(systemName: "phone.fill.badge.plus")
                                    .font(.title)
                                    .foregroundColor(.red)
                                    .padding(12)                            }
                            .frame(width: 65, height:65)
                            .background(Color.red.opacity(0.1))
                            .cornerRadius(12)
                            .frame(maxWidth: .infinity)
                            Text("Book")
                        }
                        
                    }
                }
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}
#Preview {
    HomeView()
}
