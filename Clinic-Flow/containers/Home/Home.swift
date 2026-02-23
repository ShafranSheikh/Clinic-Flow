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
                            .padding(.horizontal)
                            
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
                        NavigationLink(destination: ActiveVisit()) {
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
                        Button(action: {
                            print("Book tapped")                        }) {
                            VStack {
                                VStack {
                                    Image(systemName: "calendar")
                                        .font(.title)
                                        .foregroundColor(.blue)
                                }
                                .frame(width: 65, height: 65)
                                .background(Color.blue.opacity(0.1))
                                .cornerRadius(12)
                                
                                Text("Book")
                                    .font(.footnote.bold())
                                    .foregroundColor(.primary)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        //box button 2
                        NavigationLink(destination: Navigator()) {
                            VStack {
                                VStack {
                                    Image(systemName: "location.fill")
                                        .font(.title)
                                        .foregroundColor(.green)
                                }
                                .frame(width: 65, height: 65)
                                .background(Color.green.opacity(0.1))
                                .cornerRadius(12)
                                
                                Text("Navigate")
                                    .font(.footnote.bold())
                                    .foregroundColor(.primary)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .buttonStyle(PlainButtonStyle())
                        //box button 3
                        Button(action: {
                            print("Records tapped")
                        }) {
                            VStack {
                                VStack {
                                    Image(systemName: "doc.text.fill")
                                        .font(.title)
                                        .foregroundColor(.purple)
                                }
                                .frame(width: 65, height: 65)
                                .background(Color.purple.opacity(0.1))
                                .cornerRadius(12)
                                
                                Text("Records")
                                    .font(.footnote.bold())
                                    .foregroundColor(.primary)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        //box button 4
                        Button(action: {
                            print("Emergency tapped")
                        }) {
                            VStack {
                                VStack {
                                    Image(systemName: "phone.fill.badge.plus")
                                        .font(.title)
                                        .foregroundColor(.red)
                                }
                                .frame(width: 65, height: 65)
                                .background(Color.red.opacity(0.1))
                                .cornerRadius(12)
                                
                                Text("Emergency")
                                    .font(.footnote.bold())
                                    .foregroundColor(.primary)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        
                    }
                    .padding(20)
                    VStack(spacing: 15) {

                        HStack {
                            Text("Upcoming Appointments")
                                .font(.title2.bold())
                            Spacer()
                            Button("See All") {
                                // Action for see all
                            }
                            .font(.subheadline.bold())
                        }
                        .padding(.vertical, 10)

                        VStack(alignment: .leading, spacing: 10) {
                            HStack(alignment: .center, spacing: 15) {
                                Image(systemName: "person.crop.circle.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.gray.opacity(0.3))
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Dr. Michael Chen")
                                        .font(.title3.bold())
                                    Text("Cardiology")
                                        .font(.body)
                                        .foregroundColor(.black)
                                }
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .foregroundColor(.gray)
                            }

                            HStack(spacing: 25) {

                                HStack(spacing: 8) {
                                    Image(systemName: "calendar")
                                        .foregroundColor(.gray)
                                    Text("Feb 14, 2026")
                                        .foregroundColor(.gray)
                                }

                                HStack(spacing: 8) {
                                    Image(systemName: "clock")
                                        .foregroundColor(.gray)
                                    Text("10:00 AM")
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding(.leading, 75)
                        }
                        .padding()
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )
                        .padding(.horizontal)
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal)
                    Text("Services")
                        .font(.title2.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                    VStack(alignment: .leading, spacing: 10){
                        
                        //pharmacy
                        NavigationLink(destination: Pharmacy()) {
                            HStack(spacing: 15) {
                                Image(systemName: "pill.fill")
                                    .font(.title2)
                                    .foregroundColor(.blue)
                                    .frame(width: 30)
                                
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("Pharmacy")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    Text("Get your medics")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                
                                Spacer()

                                Image(systemName: "chevron.right")
                                    .font(.footnote.bold())
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                            )
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal)
                        
                        //laboratory
                        Button(action: {
                            // Action here
                        }) {
                            HStack(spacing: 15) {

                                Image(systemName: "testtube.2")
                                    .font(.title2)
                                    .foregroundColor(.green)
                                    .frame(width: 30)
                                
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("Laboratory")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    Text("Get your lab tests")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                
                                Spacer()

                                Image(systemName: "chevron.right")
                                    .font(.footnote.bold())
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)
                        
                        //Payments
                        Button(action: {
                            // Action here
                        }) {
                            HStack(spacing: 15) {

                                Image(systemName: "creditcard.fill")
                                    .font(.title2)
                                    .foregroundColor(.purple)
                                    .frame(width: 30) // Keeps icons aligned even if they have different widths

                                VStack(alignment: .leading, spacing: 2) {
                                    Text("Payments")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    Text("Manage bills and payments")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                
                                Spacer()

                                Image(systemName: "chevron.right")
                                    .font(.footnote.bold())
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)
                        
                        NavigationLink(destination: Parking()) {
                            HStack(spacing: 15) {
                                Image(systemName: "car.fill")
                                    .font(.title2)
                                    .foregroundColor(.orange) // Changed to orange to match the parking theme
                                    .frame(width: 30)
                                
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("Parking")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    Text("Discover parking slots")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                
                                Spacer()

                                Image(systemName: "chevron.right")
                                    .font(.footnote.bold())
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                            )
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal)
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
