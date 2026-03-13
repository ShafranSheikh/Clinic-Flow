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
    let specialty: String
    let experience: String
    let tags: [String]
    let nextAvailable: String
    let languages: String
    let iconName: String
    let iconColor: Color
}

// MARK: - MAIN ENTRY POINT
struct MedicalBookingApp: View {
    var body: some View {
        NavigationStack {
            SelectSpecialityView()
        }
    }
}

// MARK: - SHARED COMPONENTS
struct CustomBackButton: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action: { dismiss() }) {
            Image(systemName: "arrow.left")
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.black)
        }
    }
}

// MARK: - SCREEN 1: SELECT SPECIALITY
struct SelectSpecialityView: View {
    @State private var searchText = ""
    let appBackground = Color(red: 245/255, green: 245/255, blue: 245/255)
    let columns = [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)]
    
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
        .background(appBackground.ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
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
        .padding(15)
        .background(Capsule().fill(Color.white))
        .overlay(Capsule().stroke(Color.gray.opacity(0.2), lineWidth: 1))
        .padding(.horizontal, 25).padding(.vertical, 25)
    }
}

// MARK: - SCREEN 2: CHOOSE DOCTOR
struct ChooseDoctorView: View {
    let speciality: String
    @State private var searchText = ""
    

        let doctors = [
            Doctor(name: "Dr. Michael Chen", specialty: "Cardiology", experience: "15 years experience", tags: ["Hypertension", "Heart Disease"], nextAvailable: "Feb 14, 2026", languages: "English, Sinhala", iconName: "person.badge.plus.fill", iconColor: .blue),
            Doctor(name: "Dr. Sarah Jay", specialty: "Dermatology", experience: "12 years experience", tags: ["Skin Care"], nextAvailable: "Feb 14, 2026", languages: "English, Sinhala", iconName: "person.badge.plus.fill", iconColor: .blue),
            Doctor(name: "Dr. Asiri Perera", specialty: "General Medicine", experience: "8 years experience", tags: ["Family Care"], nextAvailable: "Feb 15, 2026", languages: "English, Sinhala", iconName: "person.badge.plus.fill", iconColor: .blue),
            Doctor(name: "Dr. Janaki Silva", specialty: "Pediatrics", experience: "10 years experience", tags: ["Vaccination", "Child Care"], nextAvailable: "Feb 16, 2026", languages: "English, Sinhala", iconName: "person.badge.plus.fill", iconColor: .blue),
            Doctor(name: "Dr. Robert Wilson", specialty: "Orthopedics", experience: "20 years experience", tags: ["Joint Pain", "Spine"], nextAvailable: "Feb 14, 2026", languages: "English", iconName: "person.badge.plus.fill", iconColor: .blue),
            Doctor(name: "Dr. Nilanthi Gunawardena", specialty: "Neurology", experience: "14 years experience", tags: ["Migraine", "Sleep"], nextAvailable: "Feb 17, 2026", languages: "English, Sinhala", iconName: "person.badge.plus.fill", iconColor: .blue),
            Doctor(name: "Dr. James Bond", specialty: "Cardiology", experience: "18 years experience", tags: ["Heart Valve", "ECG"], nextAvailable: "Feb 15, 2026", languages: "English", iconName: "person.badge.plus.fill", iconColor: .blue),
            Doctor(name: "Dr. K. S. Perera", specialty: "General Medicine", experience: "5 years experience", tags: ["Fever", "Routine Check"], nextAvailable: "Feb 14, 2026", languages: "English, Sinhala", iconName: "person.badge.plus.fill", iconColor: .blue)
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
        .background(Color(white: 0.97).ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
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
    
    let rushTimes = ["09:00 AM", "10:30 AM", "04:30 PM"]
    let standardTimes = ["09:30 AM", "11:00 AM", "11:30 AM", "01:00 PM", "01:30 PM", "02:00 PM", "02:30 PM", "03:00 PM", "03:30 PM", "04:00 PM", "05:00 PM", "05:30 PM"]
    
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
                            .onTapGesture { if !isPast { withAnimation { selectedDate = day } } }
                    }
                }
            }
            .padding().background(Color.white).cornerRadius(15)
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("Rush Hours").font(.headline)
                            Image(systemName: "flame.fill").foregroundColor(.orange).font(.caption)
                        }
                        timeGrid(slots: rushTimes)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Standard Hours").font(.headline)
                        timeGrid(slots: standardTimes)
                    }
                }
            }
            
            if let date = selectedDate, let time = selectedTime {
                NavigationLink(destination: ConfirmBookingView(doctor: doctor, date: "\(date) Feb 2026", time: time)) {
                    Text("Continue").font(.headline).foregroundColor(.white).frame(maxWidth: .infinity).padding().background(Color.blue).cornerRadius(50)
                }
            }
        }
        .padding(25)
        .background(Color(white: 0.97).ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
    }
    
    func timeGrid(slots: [String]) -> some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
            ForEach(slots, id: \.self) { time in
                Button(action: { withAnimation { selectedTime = time } }) {
                    Text(time)
                        .font(.system(size: 13, weight: .medium))
                        .frame(maxWidth: .infinity).padding(.vertical, 12)
                        .background(selectedTime == time ? Color.blue : Color.white)
                        .foregroundColor(selectedTime == time ? .white : .black)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.1), lineWidth: 1))
                }
            }
        }
    }
}

// MARK: - SCREEN 4: CONFIRM BOOKING
struct ConfirmBookingView: View {
    let doctor: Doctor
    let date: String
    let time: String
    
    @State private var name = ""
    @State private var age = ""
    @State private var phone = ""
    @State private var email = ""
    @State private var reason = "" // Fixed: Scope error resolved
    
    var isFormValid: Bool { !name.isEmpty && !age.isEmpty && !phone.isEmpty }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                CustomBackButton()
                VStack(alignment: .leading, spacing: 4) {
                    Text("Confirm Booking").font(.system(size: 28, weight: .bold))
                    Text("Review your appointment details").font(.subheadline).foregroundColor(.gray)
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Appointment Details").font(.system(size: 18, weight: .bold))
                    HStack(spacing: 15) {
                        Circle().fill(Color.gray.opacity(0.1)).frame(width: 60, height: 60)
                            .overlay(Image(systemName: doctor.iconName).foregroundColor(doctor.iconColor))
                        VStack(alignment: .leading, spacing: 2) {
                            Text(doctor.name).font(.system(size: 17, weight: .bold))
                            Text(doctor.specialty).font(.subheadline).foregroundColor(.gray)
                        }
                    }
                    Divider()
                    VStack(spacing: 12) {
                        DetailRow(icon: "calendar", label: "Date", value: date)
                        DetailRow(icon: "clock", label: "Time", value: time)
                        DetailRow(icon: "mappin.and.ellipse", label: "Location", value: "Room 305, 3rd Floor")
                    }
                }
                .padding(20).background(Color.white).cornerRadius(15).shadow(color: .black.opacity(0.05), radius: 10)
                
                VStack(spacing: 18) {
                    InputBox(label: "Name*", text: $name, placeholder: "e.g. John Doe")
                    InputBox(label: "Age*", text: $age, placeholder: "e.g. 25", keyboardType: .numberPad)
                    InputBox(label: "Phone Number*", text: $phone, placeholder: "0771234567", keyboardType: .phonePad)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Reason for Visit (Optional)").font(.system(size: 14, weight: .bold))
                        TextEditor(text: $reason)
                            .frame(height: 80).padding(10).background(Color.white).cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.1), lineWidth: 1))
                    }
                }
                
                NavigationLink(destination: MakePaymentView(patientName: name, date: date, doctor: doctor, time: time)) {
                    Text("Confirm Appointment").font(.headline).foregroundColor(.white).frame(maxWidth: .infinity).padding(.vertical, 18)
                        .background(isFormValid ? Color.blue : Color.gray).cornerRadius(50)
                }
                .disabled(!isFormValid)
            }
            .padding(24)
        }
        .background(Color(red: 0.98, green: 0.98, blue: 0.98).ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
    }
}

// MARK: - SCREEN 5: MAKE PAYMENT
struct MakePaymentView: View {
    let patientName: String
    let date: String
    let doctor: Doctor
    let time: String
    @State private var selectedCard = "MasterCard"
    @State private var holderName = ""
    @State private var cardNumber = ""
    @State private var expiry = ""
    @State private var cvv = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                CustomBackButton()
                Text("Select a Payment Method").font(.system(size: 24, weight: .bold))
                
                HStack(spacing: 15) {
                    PaymentIcon(name: "MasterCard", imgName: "MasterCard", isSelected: selectedCard == "MasterCard")
                        .onTapGesture { selectedCard = "MasterCard" }
                    PaymentIcon(name: "Visa", imgName: "Visa", isSelected: selectedCard == "Visa")
                        .onTapGesture { selectedCard = "Visa" }
                    PaymentIcon(name: "Apple Pay", imgName: "ApplePay", isSelected: selectedCard == "ApplePay")
                        .onTapGesture { selectedCard = "ApplePay" }
                }
                .frame(maxWidth: .infinity)
                
                VStack(spacing: 18) {
                    InputBox(label: "Cardholder Name", text: $holderName, placeholder: "John Doe")
                    InputBox(label: "Card Number", text: $cardNumber, placeholder: "XXXX XXXX XXXX XXXX", keyboardType: .numberPad)
                    HStack(spacing: 15) {
                        InputBox(label: "Expires", text: $expiry, placeholder: "MM/YY", keyboardType: .numberPad)
                        InputBox(label: "CVV", text: $cvv, placeholder: "565", keyboardType: .numberPad)
                    }
                }
                
                Spacer(minLength: 50)
                
                NavigationLink(destination: AppointmentConfirmationView(doctor: doctor, date: date, time: time)) {
                    Text("Make Payment").font(.headline).foregroundColor(.white).frame(maxWidth: .infinity).padding(.vertical, 18).background(Color.blue).cornerRadius(30)
                }
            }
            .padding(25)
        }
        .background(Color(white: 0.97).ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
    }
}

// MARK: - SCREEN 6: APPOINTMENT CONFIRMATION
struct AppointmentConfirmationView: View {
    let doctor: Doctor
    let date: String
    let time: String
    @State private var animateCheckmark = false
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "checkmark.circle.fill").font(.system(size: 80)).foregroundColor(.green)
            Text("Appointment Confirmed!").font(.system(size: 26, weight: .bold)).multilineTextAlignment(.center)
            
            VStack(spacing: 20) {
                Text("Appointment Details:").font(.headline).foregroundColor(.gray)
                VStack(spacing: 12) {
                    ConfirmationRow(label: "Speciality", value: doctor.specialty)
                    ConfirmationRow(label: "Doctor", value: doctor.name)
                    ConfirmationRow(label: "Date & Time", value: "\(date) at \(time)")
                    ConfirmationRow(label: "Payment", value: "Rs. 3,400")
                    Text("Paid").font(.headline).foregroundColor(.green)
                }
            }
            Text("Thank You And Take Care!").foregroundColor(.gray)
            Spacer()
            NavigationLink(destination: HomeView(isLoggedIn: .constant(true))) {
                Text("Back to Appointments").font(.headline).foregroundColor(.white).frame(maxWidth: .infinity).padding().background(Color.blue).cornerRadius(30)
            }
        }
        .padding(40)
        .background(Color(red: 0.98, green: 0.94, blue: 0.94).ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
    }
}

// MARK: - UI COMPONENTS
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
        .frame(maxWidth: .infinity).padding(.vertical, 25).background(Color.white).cornerRadius(24).shadow(color: .black.opacity(0.04), radius: 10)
    }
}

struct DoctorCard: View {
    let doctor: Doctor
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            ZStack {
                Circle().fill(doctor.iconColor.opacity(0.1)).frame(width: 80, height: 80)
                Image(systemName: doctor.iconName).font(.system(size: 32)).foregroundColor(doctor.iconColor)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text(doctor.name).font(.system(size: 19, weight: .bold))
                Text(doctor.experience).font(.system(size: 15)).foregroundColor(.gray)
                HStack(spacing: 8) {
                    ForEach(doctor.tags, id: \.self) { tag in
                        Text(tag).font(.system(size: 11)).padding(.horizontal, 10).padding(.vertical, 5)
                            .background(Capsule().stroke(Color.gray.opacity(0.3), lineWidth: 1))
                    }
                }
            }
        }
        .padding(18).frame(maxWidth: .infinity, alignment: .leading).background(Color.white).cornerRadius(20).shadow(color: .black.opacity(0.03), radius: 5)
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
    var placeholder: String = ""
    var keyboardType: UIKeyboardType = .default
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(label).font(.system(size: 14, weight: .bold))
            TextField(placeholder, text: $text)
                .keyboardType(keyboardType).padding(14).background(Color.white).cornerRadius(12)
                .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.1), lineWidth: 1))
        }
    }
}

struct PaymentIcon: View {
    let name: String
    let imgName: String
    let isSelected: Bool
    var body: some View {
        VStack(spacing: 8) {
           
            Image(imgName)
                .resizable().scaledToFit().frame(width: 40, height: 25)
            Text(name).font(.system(size: 10, weight: .medium)).foregroundColor(isSelected ? .blue : .gray)
        }
        .frame(width: 90, height: 75).background(Color.white).cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(isSelected ? Color.blue : Color.gray.opacity(0.1), lineWidth: 2))
    }
}

struct ConfirmationRow: View {
    let label, value: String
    var body: some View {
        VStack(spacing: 2) {
            Text(label).font(.caption).foregroundColor(.gray)
            Text(value).font(.system(size: 16, weight: .semibold))
        }
    }
}
