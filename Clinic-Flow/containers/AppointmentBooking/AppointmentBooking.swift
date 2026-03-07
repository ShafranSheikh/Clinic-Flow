import SwiftUI

// MARK: - DATA MODELS
struct SpecialityItem: Identifiable {
    let id = UUID()
    let name: String
    let count: String
    let icon: String
    let color: Color
}

struct Doctor: Identifiable {
    let id = UUID()
    let name: String
    let experience: String
    let tags: [String]
    let nextAvailable: String
    let languages: String
    let iconName: String // Changed from imageName to iconName
    let iconColor: Color // Added for a personalized look
}

// MARK: - MAIN ENTRY POINT
struct MedicalBookingApp: View {
    var body: some View {
        NavigationStack {
            SelectSpecialityView()
        }
    }
}

// MARK: - SUPPORTING COMPONENTS
struct CustomBackButton: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action: { dismiss() }) {
            Image(systemName: "arrow.left")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.black)
        }
    }
}

// MARK: - SCREEN 1: SELECT SPECIALITY
struct SelectSpecialityView: View {
    @State private var searchText = ""
    let appBackground = Color(red: 245/255, green: 245/255, blue: 245/255)
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    let specialities = [
        SpecialityItem(name: "Cardiology", count: "8 doctors", icon: "heart.text.square.fill", color: .red),
        SpecialityItem(name: "Dermatology", count: "12 doctors", icon: "hand.raised.square.fill", color: .orange),
        SpecialityItem(name: "General", count: "8 doctors", icon: "stethoscope.circle.fill", color: .blue),
        SpecialityItem(name: "Orthopedics", count: "8 doctors", icon: "figure.walk.circle.fill", color: .brown),
        SpecialityItem(name: "Pediatrics", count: "8 doctors", icon: "figure.and.child.holdinghands", color: .green),
        SpecialityItem(name: "Neurology", count: "8 doctors", icon: "brain.head.profile", color: .purple),
        SpecialityItem(name: "Dentist", count: "5 doctors", icon: "mouth.fill", color: .teal),
        SpecialityItem(name: "Eyes", count: "7 doctors", icon: "eye.fill", color: .indigo)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            headerSection
            searchBar
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(specialities) { item in
                        NavigationLink(destination: ChooseDoctorView(speciality: item.name)) {
                            SpecialityCard(item: item)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.horizontal, 25)
                .padding(.bottom, 20)
            }
        }
        .navigationBarBackButtonHidden(true)
        .background(appBackground.ignoresSafeArea())
    }
    
    var headerSection: some View {
        VStack(alignment: .leading, spacing: 15) {
            CustomBackButton()
            VStack(alignment: .leading, spacing: 4) {
                Text("Select Speciality").font(.system(size: 28, weight: .bold))
                Text("What type of doctor do you need?").font(.system(size: 16)).foregroundColor(.gray)
            }
        }
        .padding(.horizontal, 25).padding(.top, 20)
    }
    
    var searchBar: some View {
        HStack {
            Image(systemName: "magnifyingglass").foregroundColor(.gray)
            TextField("Search Specialties", text: $searchText)
        }
        .padding(15).background(Capsule().fill(Color.white))
        .padding(.horizontal, 25).padding(.vertical, 30)
    }
}

// MARK: - SCREEN 2: CHOOSE DOCTOR
struct ChooseDoctorView: View {
    let speciality: String
    @State private var searchText = ""
    
    // Updated data with SF Symbols instead of images
    let doctors = [
        Doctor(name: "Dr. Michael Chen", experience: "15 years experience", tags: ["Hypertension", "Heart Disease"], nextAvailable: "Feb 14, 2026", languages: "English, Sinhala", iconName: "person.badge.plus.fill", iconColor: .blue),
        Doctor(name: "Dr. Sarah Jay", experience: "12 years experience", tags: ["Cardiac Surgery"], nextAvailable: "Feb 14, 2026", languages: "English, Sinhala", iconName:  "person.badge.plus.fill", iconColor: .blue),
        Doctor(name: "Dr. Asiri Perera", experience: "8 years experience", tags: ["Cardiac Care"], nextAvailable: "Feb 15, 2026", languages: "English, Sinhala", iconName:  "person.badge.plus.fill", iconColor: .blue)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            headerSection
            searchBar
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 16) {
                    ForEach(doctors) { doctor in
                        NavigationLink(destination: PickDateTimeView(doctor: doctor)) {
                            DoctorCard(doctor: doctor)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.horizontal, 25)
            }
        }
        .navigationBarBackButtonHidden(true)
        .background(Color(white: 0.97).ignoresSafeArea())
    }
    
    var headerSection: some View {
        VStack(alignment: .leading, spacing: 15) {
            CustomBackButton()
            VStack(alignment: .leading, spacing: 4) {
                Text("Choose Doctor").font(.system(size: 28, weight: .bold))
                Text("Available \(speciality) doctors").font(.system(size: 18)).foregroundColor(.gray)
            }
        }
        .padding(.horizontal, 25).padding(.top, 20)
    }
    
    var searchBar: some View {
        HStack {
            Image(systemName: "magnifyingglass").foregroundColor(.gray)
            TextField("Search Doctors", text: $searchText)
        }
        .padding(15).background(Capsule().fill(Color.white))
        .overlay(Capsule().stroke(Color.gray.opacity(0.2), lineWidth: 1))
        .padding(.horizontal, 25).padding(.vertical, 25)
    }
}

// MARK: - SCREEN 3: PICK DATE & TIME
struct PickDateTimeView: View {
    let doctor: Doctor
    @State private var selectedDate: Int? = nil
    @State private var selectedTime: String? = nil
    let today = 19
    let times = ["09:00 AM", "09:30 AM", "10:00 AM", "10:30 AM", "11:00 AM", "11:30 AM", "02:00 PM", "02:30 PM", "03:00 PM", "03:30 PM", "04:00 PM", "04:30 PM"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            CustomBackButton()
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Pick Date & Time").font(.system(size: 24, weight: .bold))
                Text("Available for \(doctor.name)").foregroundColor(.gray)
            }
            
            Text("Select Date").font(.headline)
            
            VStack {
                Text("February 2026 < >").font(.system(size: 14, weight: .bold)).padding(.bottom, 5)
                let days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
                HStack {
                    ForEach(days, id: \.self) { day in
                        Text(day).font(.caption2).frame(maxWidth: .infinity).foregroundColor(.gray)
                    }
                }
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7)) {
                    ForEach(1...28, id: \.self) { day in
                        let isPast = day < today
                        Text("\(day)")
                            .font(.system(size: 14))
                            .frame(width: 32, height: 32)
                            .background(day == selectedDate ? Color.blue : Color.clear)
                            .foregroundColor(day == selectedDate ? .white : (isPast ? .gray.opacity(0.3) : .black))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .onTapGesture {
                                if !isPast {
                                    withAnimation(.spring()) {
                                        selectedDate = day
                                        selectedTime = times.first
                                    }
                                }
                            }
                    }
                }
            }
            .padding().background(Color.white).cornerRadius(15)
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Select Time").font(.headline)
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach(times, id: \.self) { time in
                        Button(action: {
                            withAnimation(.easeInOut) { selectedTime = time }
                        }) {
                            Text(time)
                                .font(.system(size: 14, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 12)
                                .background(selectedTime == time ? Color.blue : Color.white)
                                .foregroundColor(selectedTime == time ? .white : .black)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.1), lineWidth: 1))
                        }
                    }
                }
                if selectedTime == nil { rushHourNote }
            }
            
            Spacer()
            
            if let date = selectedDate, let time = selectedTime {
                NavigationLink(destination: ConfirmBookingView(doctor: doctor, date: "\(date) Feb 2026", time: time)) {
                    Text("Continue")
                        .font(.headline).foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                }
                .transition(.move(edge: .bottom).combined(with: .opacity))
            }
        }
        .padding(35)
        .navigationBarBackButtonHidden(true)
        .background(Color(white: 0.97).ignoresSafeArea())
    }
    
    var rushHourNote: some View {
        VStack(alignment: .center) {
            Text("Usual Rush Hours For You To Avoid:").font(.system(size: 12, weight: .bold))
            Text("11:00 AM - 2:00 PM  |  4:00 PM - 6:00 PM").font(.system(size: 12)).foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 5)
    }
}

// MARK: - SCREEN 4: CONFIRM BOOKING
struct ConfirmBookingView: View {
    let doctor: Doctor
    let date: String
    let time: String
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var age = ""
    @State private var phone = ""
    @State private var email = ""
    @State private var reason = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                CustomBackButton()
                
                Text("Confirm Booking").font(.system(size: 24, weight: .bold))
                Text("Review your appointment details").foregroundColor(.gray)
                
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        // DOCTOR ICON INSTEAD OF IMAGE
                        ZStack {
                            Circle().fill(doctor.iconColor.opacity(0.1))
                                .frame(width: 50, height: 50)
                            Image(systemName: doctor.iconName)
                                .foregroundColor(doctor.iconColor)
                                .font(.system(size: 20))
                        }
                        
                        VStack(alignment: .leading) {
                            Text(doctor.name).font(.headline)
                            Text("Specialist").font(.subheadline).foregroundColor(.gray)
                        }
                    }
                    Divider()
                    DetailRow(icon: "calendar", label: "Date", value: date)
                    DetailRow(icon: "clock", label: "Time", value: time)
                    DetailRow(icon: "mappin.and.ellipse", label: "Location", value: "Room 305, 3rd Floor")
                }
                .padding().background(Color.white).cornerRadius(15)
                
                HStack {
                    InputBox(label: "Name*", text: $name)
                    InputBox(label: "Age*", text: $age)
                }
                HStack {
                    InputBox(label: "Phone Number*", text: $phone)
                    InputBox(label: "Email", text: $email)
                }
                
                VStack(alignment: .leading) {
                    Text("Reason for Visit (Optional)").font(.caption).bold()
                    TextEditor(text: $reason)
                        .frame(height: 80).padding(4)
                        .background(Color.white).cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.2), lineWidth: 1))
                }
                
                NavigationLink(destination: MakePaymentView(patientName: name, date: date)) {
                    Text("Confirm Appointment")
                        .font(.headline).foregroundColor(.white)
                        .frame(maxWidth: .infinity).padding().background(Color.blue).cornerRadius(15)
                }
                
                Button("Go Back") { dismiss() }.frame(maxWidth: .infinity).foregroundColor(.gray)
            }
            .padding(25)
        }
        .navigationBarBackButtonHidden(true)
        .background(Color(white: 0.97).ignoresSafeArea())
    }
}

// MARK: - SCREEN 5: MAKE PAYMENT
struct MakePaymentView: View {
    let patientName: String
    let date: String
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            CustomBackButton()
            Text("Make Payment").font(.system(size: 24, weight: .bold))
            Text("Easily pay your appointment bill here").foregroundColor(.gray)
            
            VStack(spacing: 20) {
                HStack {
                    Circle().fill(Color.blue.opacity(0.1)).frame(width: 60, height: 60)
                        .overlay(Image(systemName: "doc.text.fill").foregroundColor(.blue))
                    VStack(alignment: .leading) {
                        Text("Clinic Flow").font(.headline)
                        Text("Invoice").font(.subheadline).foregroundColor(.gray)
                    }
                    Spacer()
                }
                VStack(spacing: 12) {
                    InvoiceRow(label: "Invoice No", value: "#INV 0065 0053")
                    InvoiceRow(label: "Patient Name", value: patientName.isEmpty ? "Abc Perera" : patientName)
                    InvoiceRow(label: "Patient ID", value: "CLN-0458")
                    InvoiceRow(label: "Department", value: "Medical Consultation")
                    InvoiceRow(label: "Appointment Date", value: date)
                    Divider()
                    InvoiceRow(label: "Subtotal", value: "LKR 3,400")
                    HStack {
                        Text("Total").font(.headline)
                        Spacer()
                        Text("3,400.00").font(.headline)
                    }.padding(.top, 10)
                }
            }
            .padding(25).background(Color.white).cornerRadius(20)
            
            Spacer()
            Button(action: { }) {
                Text("Confirm & Pay")
                    .font(.headline).foregroundColor(.white)
                    .frame(maxWidth: .infinity).padding().background(Color.blue).cornerRadius(15)
            }
        }
        .padding(25)
        .navigationBarBackButtonHidden(true)
        .background(Color(white: 0.97).ignoresSafeArea())
    }
}

// MARK: - SUPPORTING VIEWS
struct SpecialityCard: View {
    let item: SpecialityItem
    var body: some View {
        VStack(spacing: 15) {
            ZStack {
                Circle().fill(item.color.opacity(0.1)).frame(width: 50, height: 50)
                Image(systemName: item.icon).font(.system(size: 22)).foregroundColor(item.color)
            }
            VStack(spacing: 4) {
                Text(item.name).font(.system(size: 16, weight: .bold)).foregroundColor(.primary)
                Text(item.count).font(.system(size: 13)).foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity).padding(.vertical, 25)
        .background(Color.white).cornerRadius(24)
        .shadow(color: Color.black.opacity(0.04), radius: 10, x: 0, y: 8)
    }
}

struct DoctorCard: View {
    let doctor: Doctor
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .top, spacing: 15) {
                
                ZStack {
                        Circle()
                                        .fill(doctor.iconColor.opacity(0.1))
                                        .frame(width: 80, height: 80)
                                    
                                    Image(systemName: doctor.iconName)
                                        .font(.system(size: 32)) // Slightly larger for the circle
                                        .foregroundColor(doctor.iconColor)
                                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(doctor.name).font(.system(size: 19, weight: .bold))
                    Text(doctor.experience).font(.system(size: 15)).foregroundColor(.gray)
                    HStack(spacing: 8) {
                        ForEach(doctor.tags, id: \.self) { tag in
                            Text(tag).font(.system(size: 11, weight: .medium)).padding(.horizontal, 10).padding(.vertical, 5)
                                .background(Capsule().stroke(Color.gray.opacity(0.3), lineWidth: 1))
                        }
                    }.padding(.top, 4)
                    
                    HStack(spacing: 8) {
                        Image(systemName: "calendar").font(.system(size: 14))
                        Text("Next available: \(doctor.nextAvailable)").font(.system(size: 14))
                    }.foregroundColor(.gray).padding(.top, 8)
                }
            }
        }
        .padding(18).frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white).cornerRadius(20)
        .shadow(color: Color.black.opacity(0.03), radius: 5, x: 0, y: 5)
    }
}

struct DetailRow: View {
    let icon, label, value: String
    var body: some View {
        HStack {
            Image(systemName: icon).foregroundColor(.gray).frame(width: 20)
            Text(label).foregroundColor(.gray)
            Spacer()
            Text(value).bold()
        }.font(.system(size: 14))
    }
}

struct InputBox: View {
    let label: String
    @Binding var text: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(label).font(.caption).bold()
            TextField("", text: $text).padding(12).background(Color.white).cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.1), lineWidth: 1))
        }
    }
}

struct InvoiceRow: View {
    let label, value: String
    var body: some View {
        HStack {
            Text(label).foregroundColor(.gray)
            Spacer()
            Text(value).bold()
        }.font(.system(size: 14))
    }
}

#Preview {
    MedicalBookingApp()
}
