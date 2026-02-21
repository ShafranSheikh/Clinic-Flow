import SwiftUI
struct ActiveVisit: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Blue Header Section
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Button(action: { dismiss() }){
                            Image(systemName: "arrow.left")
                        }
                        Text("Active Visit")
                            .font(.title.bold())
                        Text("Track your visit progrees in real time")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                }
                .frame(height: 280)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .background(Color.blue)
                //card section
                VStack(spacing: 20) {
                    // Header Row: Title and Status Badge
                    HStack {
                        Text("Current Status")
                            .font(.title3.bold())
                        
                        Spacer()
                        
                        Text("Waiting")
                            .font(.caption.bold())
                            .padding(.horizontal, 12)
                            .padding(.vertical, 4)
                            .background(Color.orange.opacity(0.15))
                            .foregroundColor(.orange)
                            .clipShape(Capsule())
                    }
                    
                    // The Big Number and Info
                    VStack(spacing: 8) {
                        Text("7")
                            .font(.system(size: 80, weight: .bold))
                            .foregroundColor(.blue)
                        
                        Text("6 people ahead of you")
                            .font(.headline)
                        
                        Text("Estimated wait: 15 - 20 minutes")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    // Custom Progress Bar
                    VStack(spacing: 12) {
                        ZStack(alignment: .leading) {
                            Capsule()
                                .fill(Color.gray.opacity(0.2))
                                .frame(height: 8)
                            Capsule()
                                .fill(Color.gray)
                                .frame(width: 200, height: 8)
                        }
                        Text("60% of average wait time")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.gray.opacity(0.4))
                        .frame(height: 180)
                    
                    // Current Location Row
                    HStack(spacing: 15) {
                        Image(systemName: "location.fill")
                            .foregroundColor(.green)
                            .padding(10)
                            .background(Color.green.opacity(0.1))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text("Current Location")
                                .font(.headline)
                            Text("Waiting Area B, 2nd Floor")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                    }
                    
                    // Action Button
                    Button(action: { /* Logic for navigation */ }) {
                        HStack {
                            Image(systemName: "location.north.fill")
                            Text("Start Navigation")
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                    }
                }
                .padding(20)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
                .padding(.horizontal)
                .offset(y: -50)
                .padding(.bottom, -30)
                // Visit Timeline Section
                //timelineSection
                Text("Visit Timeline")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                Spacer()
                // Visit Timeline Card
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 20) {
                        // 1. The Vertical Timeline Line and Dot
                        VStack(spacing: 0) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.3))
                                .frame(width: 2, height: 30)
                            
                            // The Outer "Glow" Circle
                            ZStack {
                                Circle()
                                    .fill(Color.blue.opacity(0.1))
                                    .frame(width: 44, height: 44)
                                
                                // The Inner Solid Blue Circle
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 20, height: 20)
                            }
                            
                            Rectangle()
                                .fill(Color.gray.opacity(0.3))
                                .frame(width: 2, height: 30)
                        }
                        
                        // 2. The Text Content
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Waiting")
                                .font(.headline)
                            Text("Now")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            Text("6 people in queue")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        // 3. Trailing Chevron
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                }
                .background(Color.white)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                )
                .padding(.horizontal)
                // Doctor Section
                //doctorSection
                Text("Your Doctor")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                // Doctor Card
                HStack(spacing: 15) {
                    // 1. Initials Circle Badge
                    ZStack {
                        Circle()
                            .fill(Color.blue.opacity(0.1))
                            .frame(width: 60, height: 60)
                        
                        Text("MC")
                            .font(.title2.bold())
                            .foregroundColor(.blue)
                    }
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Dr. Michael Chen")
                            .font(.title3.bold())
                        
                        Text("General Practitioner")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text("Room 200, 2nd Floor")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
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
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true) // We will use our own back button
    }
}

