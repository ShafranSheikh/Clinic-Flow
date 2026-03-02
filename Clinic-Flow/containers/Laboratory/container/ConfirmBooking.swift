
import SwiftUI

struct ConfirmBooking: View{
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
                        Text("Confirm Booking")
                            .font(.title.bold())
                        Text("Review your appointment details")
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
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Appointment Details")
                        .font(.headline)
                    
                    HStack(spacing: 15) {
                        Circle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 50, height: 50)
                        
                        VStack(alignment: .leading) {
                            Text("Blood Test").font(.headline)
                            Text("10 Hours Fasting Required").font(.caption).foregroundColor(.secondary)
                        }
                    }
                    
                    Divider().padding(.vertical, 5)
                    
                    VStack(spacing: 15) {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Date")
                            Spacer()
                            Text("Feb 21, 2026").bold()
                        }
                        
                        HStack {
                            Image(systemName: "clock")
                            Text("Time")
                            Spacer()
                            Text("09:00 AM").bold()
                        }
                        
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                            Text("Location")
                            Spacer()
                            Text("Laboratory, 2nd Floor").bold()
                        }
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .shadow(radius: 0.5)
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 18) {
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Name*").font(.subheadline).bold()
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                .frame(height: 45)
                                .background(Color.white.cornerRadius(10))
                        }

                        VStack(alignment: .leading, spacing: 8) {
                            Text("Age*").font(.subheadline).bold()
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                .frame(height: 45)
                                .background(Color.white.cornerRadius(10))
                        }
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Phone Number*").font(.subheadline).bold()
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                .frame(height: 45)
                                .background(Color.white.cornerRadius(10))
                        }
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Email").font(.subheadline).bold()
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                .frame(height: 45)
                                .background(Color.white.cornerRadius(10))
                        }
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Reason for Visit (Optional)").font(.subheadline).bold()
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                .frame(height: 100)
                                .background(Color.white.cornerRadius(10))
                        }
                    }
                .padding()
                .padding(.horizontal)
                
                VStack(spacing: 12) {
                    
                    NavigationLink(destination: LabBookingPayment()) {
                        Text("Confirm Appointment")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(50)
                    }
                    Button(action: { dismiss() }) {
                        Text("Go Back")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                    }
                }
                .padding()
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}
