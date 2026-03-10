import SwiftUI

struct LabBookingConfirmation: View{
    @State private var selectedTime: String? = nil
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
                        Text("Lab Test")
                            .font(.title.bold())
                        Text("Book your lab visit here")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                }
                .frame(height: 130)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.vertical, 20)
                .background(Color.green)
                .padding(.bottom, 30)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Blood Test")
                        .font(.headline)
                    Text("10 Hours Fasting Required")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text("Keep yourself hydrated during this time")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text("Upload Doctor's Prescription")
                        .font(.subheadline).bold()
                        .padding(.top, 5)
                    HStack(spacing: 6) {
                        Button(action: {}) {
                            Text("Photo")
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(50)
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.green, lineWidth: 1)
                        )
                        .padding(.vertical, 5)
                        .padding(.horizontal)

                        Button(action: { }) {
                            Text("Upload")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                        .background(Color.green)
                        .cornerRadius(50)
                        .padding(.vertical, 5)
                        .padding(.horizontal)
                    }
                    
                }
                .padding()
                .background(Color.white)
                .padding(.horizontal)
                .cornerRadius(15)
                .shadow(radius: 0.5)
                
                Text("Select Date ")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.top, 30)
                
                VStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.gray.opacity(0.1))
                        .frame(height: 200)
                        .overlay(Text("Calander").foregroundColor(.gray))
                }
                .padding()
                
            
                VStack(alignment: .leading, spacing: 15) {
                    Text("Select Time")
                        .font(.title2.bold())
                    
                    VStack(spacing: 12) {
                        // Row 1
                        HStack(spacing: 10) {
                            TimeSlotButton(time: "09:00 AM", isSelected: selectedTime == "09:00 AM") { selectedTime = "09:00 AM" }
                            TimeSlotButton(time: "09:30 AM", isSelected: selectedTime == "09:30 AM") { selectedTime = "09:30 AM" }
                            TimeSlotButton(time: "10:00 AM", isSelected: selectedTime == "10:00 AM") { selectedTime = "10:00 AM" }
                        }
                        
                        // Row 2
                        HStack(spacing: 10) {
                            TimeSlotButton(time: "10:30 AM", isSelected: selectedTime == "10:30 AM") { selectedTime = "10:30 AM" }
                            TimeSlotButton(time: "11:00 AM", isSelected: selectedTime == "11:00 AM") { selectedTime = "11:00 AM" }
                            TimeSlotButton(time: "11:30 AM", isSelected: selectedTime == "11:30 AM") { selectedTime = "11:30 AM" }
                        }
                        
                        // Row 3
                        HStack(spacing: 10) {
                            TimeSlotButton(time: "02:00 AM", isSelected: selectedTime == "02:00 AM") { selectedTime = "02:00 AM" }
                            TimeSlotButton(time: "02:30 AM", isSelected: selectedTime == "02:30 AM") { selectedTime = "02:30 AM" }
                            TimeSlotButton(time: "03:00 AM", isSelected: selectedTime == "03:00 AM") { selectedTime = "03:00 AM" }
                        }
                        
                        // Row 4
                        HStack(spacing: 10) {
                            TimeSlotButton(time: "03:30 AM", isSelected: selectedTime == "03:30 AM") { selectedTime = "03:30 AM" }
                            TimeSlotButton(time: "04:00 AM", isSelected: selectedTime == "04:00 AM") { selectedTime = "04:00 AM" }
                            TimeSlotButton(time: "04:30 AM", isSelected: selectedTime == "04:30 AM") { selectedTime = "04:30 AM" }
                        }
                    }
                }
                .padding(.bottom, 20)
                .padding(.horizontal)
                
                VStack(spacing: 20) {
                    Text("Usual rush hours for you to avoid: 11:00 AM - 02:00 PM")
                        .font(.subheadline.bold())
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.yellow.opacity(0.1))
                        .frame(maxWidth: .infinity)
                        .cornerRadius(15)
                    
                    NavigationLink(destination: ConfirmBooking()) {
                        Text("Continue")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(50)
                    }
                }
                .padding(.horizontal )
                .padding(.vertical, 10)
                
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}

