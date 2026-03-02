import SwiftUI

struct AppointmentDetails: View{
    @Environment(\.dismiss) private var dismiss
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
                        Text("Schedule details")
                            .font(.title.bold())
                        Text("Manage your upcomming schedule here")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                }
                .frame(height: 170)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.vertical, 20)
                .background(Color.blue)
                .padding(.bottom, 30)
                
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Upcoming Appointment")
                        .font(.headline)
                    
                    
                    HStack {
                        Spacer()
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.gray.opacity(0.3))
                        Spacer()
                    }

                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("Doctor:")
                                .foregroundColor(.secondary)
                                .frame(width: 80, alignment: .leading)
                            Text("Dr. Michael Chen")
                                .bold()
                        }
                        HStack {
                            Text("Date:")
                                .foregroundColor(.secondary)
                                .frame(width: 80, alignment: .leading)
                            Text("Feb 14, 2026 at 10:00 AM")
                                .bold()
                        }
                        HStack {
                            Text("Location:")
                                .foregroundColor(.secondary)
                                .frame(width: 80, alignment: .leading)
                            Text("Room 305, 3rd Floor")
                                .bold()
                        }
                    }
                    .font(.subheadline)

                   
                    HStack(spacing: 12) {
                        
                        Text("Reschedule")
                            .font(.subheadline.bold())
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(Color.white)
                            .cornerRadius(50)
                            .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.gray.opacity(0.3)))
                        
                        Text("Check-in")
                            .font(.subheadline.bold())
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(Color.blue)
                            .cornerRadius(50)
                        
                      
                        Image(systemName: "trash")
                            .foregroundColor(.red)
                            .padding(10)
                            .background(Color.red.opacity(0.1))
                            .cornerRadius(50)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .shadow(color: .black.opacity(0.05), radius: 10)
                .padding(.horizontal)
                
                Text("Visit Timeline")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                Spacer()
                
                VStack(alignment: .leading, spacing: 0) {
                    NavigationLink(destination: ScheduleTimeline()) {
                        HStack(spacing: 20) {
                            VStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 2, height: 30)
                                
                                ZStack {
                                    Circle()
                                        .fill(Color.gray.opacity(0.1))
                                        .frame(width: 44, height: 44)
                                    
                                    Circle()
                                        .fill(Color.gray)
                                        .frame(width: 20, height: 20)
                                }
                                
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 2, height: 30)
                            }
                        }
                        .buttonStyle(PlainButtonStyle()) 
                        .padding(.horizontal)
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Check in")
                                .font(.headline)
                                .foregroundColor(.black)

                            Text("Pending")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
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
                
                Text("Pre visit check list")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 10) {
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Completion Progress").font(.subheadline)
                                Text("60%").font(.system(size: 40, weight: .bold))
                            }
                            Spacer()
                            Image(systemName: "checkmark.square.fill")
                                .font(.system(size: 40))
                        }
                        
                        ProgressView(value: 0.6)
                            .tint(.white)
                            .background(Color.white.opacity(0.3))
                            .scaleEffect(x: 1, y: 2, anchor: .center)
                            .clipShape(Capsule())
                        
                        Text("7/12 items").font(.caption)
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                VStack(spacing: 20) {
                    
                   
                    VStack(alignment: .leading, spacing: 15) {
                        
                        HStack {
                            Text("Documents")
                                .font(.headline)
                                .foregroundColor(.primary)
                            Spacer()
                            Text("2/3")
                                .font(.caption.bold())
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(5)
                        }
                        
                        VStack(spacing: 12) {
                           
                            HStack {
                                Image(systemName: "checkmark.square.fill")
                                    .foregroundColor(.blue)
                                Text("Insurance Card")
                                Spacer()
                                Image(systemName: "checkmark")
                                    .font(.caption.bold())
                                    .foregroundColor(.blue)
                            }
                            
                         
                            HStack {
                                Image(systemName: "checkmark.square.fill")
                                    .foregroundColor(.blue)
                                Text("Identity Card")
                                Spacer()
                                Image(systemName: "checkmark")
                                    .font(.caption.bold())
                                    .foregroundColor(.blue)
                            }
                            
                            HStack {
                                Image(systemName: "square")
                                    .foregroundColor(.gray)
                                Text("Previous test results")
                                Spacer()
                            }
                        }
                        .font(.subheadline)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.1), lineWidth: 1))

                    VStack(alignment: .leading, spacing: 15) {
                        
                        HStack {
                            Text("Medical Information")
                                .font(.headline)
                                .foregroundColor(.primary)
                            Spacer()
                            Text("2/3")
                                .font(.caption.bold())
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(5)
                        }
                        
                        VStack(spacing: 12) {
                            
                            HStack {
                                Image(systemName: "checkmark.square.fill")
                                    .foregroundColor(.blue)
                                Text("List of current medications")
                                Spacer()
                                Image(systemName: "checkmark")
                                    .font(.caption.bold())
                                    .foregroundColor(.blue)
                            }
                            
                            HStack {
                                Image(systemName: "checkmark.square.fill")
                                    .foregroundColor(.blue)
                                Text("List of allergies")
                                Spacer()
                                Image(systemName: "checkmark")
                                    .font(.caption.bold())
                                    .foregroundColor(.blue)
                            }
                            
                            HStack {
                                Image(systemName: "square")
                                    .foregroundColor(.gray)
                                Text("Recent symptoms documented")
                                Spacer()
                            }
                        }
                        .font(.subheadline)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.1), lineWidth: 1))
                }
                .padding(.horizontal)
                .padding(.bottom, 30)
                
                HStack{
                    Text("Save checklist")
                        .font(.subheadline.bold())
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .cornerRadius(50)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.gray.opacity(0.3)))
                    
                    Text("Mark complete")
                        .font(.subheadline.bold())
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Color.blue)
                        .cornerRadius(50)
                }
                .padding()
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}


