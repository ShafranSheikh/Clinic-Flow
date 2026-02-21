import SwiftUI

struct AppointmentsView: View {
    @State private var selectedTab = "Upcoming"
    let tabOptions = ["Upcoming", "Past"]
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 0){
                    VStack(alignment: .leading) {
                        Spacer()
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Appointments")
                                    .font(.title.bold())
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal)
                            
                            Spacer()
                            
                            NavigationLink(destination: ActiveVisit()) {
                                Text("+ Book")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 100)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(50)
                            }
                            .padding(.top, 5)
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)
                    }
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .padding(.bottom, 40)
                    
                    CustomTab(selection: $selectedTab, tabs: tabOptions)
                                .padding(.horizontal)
                                .padding(.bottom, 20)
                            VStack(spacing: 15) {
                                if selectedTab == "Upcoming" {
                                    //card 1
                                    VStack(alignment: .leading, spacing: 20) {
                                        // ROW 1: Doctor Info
                                        HStack(spacing: 15) {
                                            Image(systemName: "person.crop.circle.fill")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                                .foregroundColor(.gray.opacity(0.3))
                                            
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text("Dr. Michael Chen")
                                                    .font(.headline)
                                                Text("Cardiology")
                                                    .font(.subheadline)
                                                    .foregroundColor(.secondary)
                                            }
                                            
                                            Spacer()
                                            
                                            Text("Follow Up")
                                                .font(.caption.bold())
                                                .padding(.horizontal, 12)
                                                .padding(.vertical, 4)
                                                .background(Color.orange.opacity(0.15))
                                                .foregroundColor(.orange)
                                                .clipShape(Capsule())
                                        }
                                        
                                        // ROW 2: Date and Time
                                        HStack(spacing: 20) {
                                            HStack(spacing: 8) {
                                                Image(systemName: "calendar")
                                                    .foregroundColor(.gray)
                                                Text("Feb 14, 2026")
                                                    .font(.subheadline)
                                            }
                                            
                                            HStack(spacing: 8) {
                                                Image(systemName: "clock")
                                                    .foregroundColor(.gray)
                                                Text("10:00 AM")
                                                    .font(.subheadline)
                                            }
                                        }
                                        
                                        // ROW 3: Action Button
                                        Button(action: { /* Navigate to schedule */ }) {
                                            Text("View Schedule")
                                                .font(.headline)
                                                .foregroundColor(.white)
                                                .frame(maxWidth: .infinity)
                                                .padding(.vertical, 12)
                                                .background(Color.blue)
                                                .cornerRadius(50)
                                        }
                                    }
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                                    )
                                    .padding(.horizontal)
                                    //card 2
                                    VStack(alignment: .leading, spacing: 20) {
                                        // ROW 1: Doctor Info
                                        HStack(spacing: 15) {
                                            Image(systemName: "person.crop.circle.fill")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                                .foregroundColor(.gray.opacity(0.3))
                                            
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text("Dr. Michael Chen")
                                                    .font(.headline)
                                                Text("Cardiology")
                                                    .font(.subheadline)
                                                    .foregroundColor(.secondary)
                                            }
                                        }
                                        
                                        // ROW 2: Date and Time
                                        HStack(spacing: 20) {
                                            HStack(spacing: 8) {
                                                Image(systemName: "calendar")
                                                    .foregroundColor(.gray)
                                                Text("Feb 14, 2026")
                                                    .font(.subheadline)
                                            }
                                            
                                            HStack(spacing: 8) {
                                                Image(systemName: "clock")
                                                    .foregroundColor(.gray)
                                                Text("10:00 AM")
                                                    .font(.subheadline)
                                            }
                                        }
                                        
                                        // ROW 3: Action Button
                                        Button(action: { /* Navigate to schedule */ }) {
                                            Text("View Schedule")
                                                .font(.headline)
                                                .foregroundColor(.white)
                                                .frame(maxWidth: .infinity)
                                                .padding(.vertical, 12)
                                                .background(Color.blue)
                                                .cornerRadius(50)
                                        }
                                    }
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                                    )
                                    .padding(.horizontal)
                                    
                                } else {
                                    //card past 1
                                    VStack(alignment: .leading, spacing: 20) {
                                        // ROW 1: Doctor Info
                                        HStack(spacing: 15) {
                                            Image(systemName: "person.crop.circle.fill")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                                .foregroundColor(.gray.opacity(0.3))
                                            
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text("Dr. Michael Chen")
                                                    .font(.headline)
                                                Text("Cardiology")
                                                    .font(.subheadline)
                                                    .foregroundColor(.secondary)
                                            }
                                            
                                            Spacer()
                                            
                                            Text("Completed")
                                                .font(.caption.bold())
                                                .padding(.horizontal, 12)
                                                .padding(.vertical, 4)
                                                .background(Color.green.opacity(0.15))
                                                .foregroundColor(.green)
                                                .clipShape(Capsule())
                                        }
                                        
                                        // ROW 2: Date and Time
                                        HStack(spacing: 20) {
                                            HStack(spacing: 8) {
                                                Image(systemName: "calendar")
                                                    .foregroundColor(.gray)
                                                Text("Feb 14, 2026")
                                                    .font(.subheadline)
                                            }
                                            
                                            HStack(spacing: 8) {
                                                Image(systemName: "clock")
                                                    .foregroundColor(.gray)
                                                Text("10:00 AM")
                                                    .font(.subheadline)
                                            }
                                        }
                                        
                                        // ROW 3: Action Button
                                        Button(action: { /* Navigate to schedule */ }) {
                                            Text("View Schedule")
                                                .font(.headline)
                                                .foregroundColor(.white)
                                                .frame(maxWidth: .infinity)
                                                .padding(.vertical, 12)
                                                .background(Color.blue)
                                                .cornerRadius(50)
                                        }
                                    }
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                                    )
                                    .padding(.horizontal)
                                    //card past 2
                                    VStack(alignment: .leading, spacing: 20) {
                                        // ROW 1: Doctor Info
                                        HStack(spacing: 15) {
                                            Image(systemName: "person.crop.circle.fill")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                                .foregroundColor(.gray.opacity(0.3))
                                            
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text("Dr. Michael Chen")
                                                    .font(.headline)
                                                Text("Cardiology")
                                                    .font(.subheadline)
                                                    .foregroundColor(.secondary)
                                            }
                                            
                                            Spacer()
                                            
                                            Text("Completed")
                                                .font(.caption.bold())
                                                .padding(.horizontal, 12)
                                                .padding(.vertical, 4)
                                                .background(Color.green.opacity(0.15))
                                                .foregroundColor(.green)
                                                .clipShape(Capsule())
                                        }
                                        
                                        // ROW 2: Date and Time
                                        HStack(spacing: 20) {
                                            HStack(spacing: 8) {
                                                Image(systemName: "calendar")
                                                    .foregroundColor(.gray)
                                                Text("Feb 14, 2026")
                                                    .font(.subheadline)
                                            }
                                            
                                            HStack(spacing: 8) {
                                                Image(systemName: "clock")
                                                    .foregroundColor(.gray)
                                                Text("10:00 AM")
                                                    .font(.subheadline)
                                            }
                                        }
                                        
                                        // ROW 3: Action Button
                                        Button(action: { /* Navigate to schedule */ }) {
                                            Text("View Schedule")
                                                .font(.headline)
                                                .foregroundColor(.white)
                                                .frame(maxWidth: .infinity)
                                                .padding(.vertical, 12)
                                                .background(Color.blue)
                                                .cornerRadius(50)
                                        }
                                    }
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                                    )
                                    .padding(.horizontal)
                                    
                                    //card past 3
                                    VStack(alignment: .leading, spacing: 20) {
                                        // ROW 1: Doctor Info
                                        HStack(spacing: 15) {
                                            Image(systemName: "person.crop.circle.fill")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                                .foregroundColor(.gray.opacity(0.3))
                                            
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text("Dr. Michael Chen")
                                                    .font(.headline)
                                                Text("Cardiology")
                                                    .font(.subheadline)
                                                    .foregroundColor(.secondary)
                                            }
                                            
                                            Spacer()
                                            
                                            Text("Completed")
                                                .font(.caption.bold())
                                                .padding(.horizontal, 12)
                                                .padding(.vertical, 4)
                                                .background(Color.green.opacity(0.15))
                                                .foregroundColor(.green)
                                                .clipShape(Capsule())
                                        }
                                        
                                        // ROW 2: Date and Time
                                        HStack(spacing: 20) {
                                            HStack(spacing: 8) {
                                                Image(systemName: "calendar")
                                                    .foregroundColor(.gray)
                                                Text("Feb 14, 2026")
                                                    .font(.subheadline)
                                            }
                                            
                                            HStack(spacing: 8) {
                                                Image(systemName: "clock")
                                                    .foregroundColor(.gray)
                                                Text("10:00 AM")
                                                    .font(.subheadline)
                                            }
                                        }
                                        
                                        // ROW 3: Action Button
                                        Button(action: { /* Navigate to schedule */ }) {
                                            Text("View Schedule")
                                                .font(.headline)
                                                .foregroundColor(.white)
                                                .frame(maxWidth: .infinity)
                                                .padding(.vertical, 12)
                                                .background(Color.blue)
                                                .cornerRadius(50)
                                        }
                                    }
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                                    )
                                    .padding(.horizontal)
                                }
                            }
                }
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    AppointmentsView()
}
