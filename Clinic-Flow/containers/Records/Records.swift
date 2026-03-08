import SwiftUI

struct RecordsView: View {
    @State private var selectedTab = "Consultations"
    let tabOptions = ["Consultations", "Lab results", "Payments"]
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 0){
                    
                    VStack(alignment: .leading) {
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Records ")
                                .font(.title.bold())
                            Text("Your Complete health information")
                                .font(.subheadline)
                        }
                        .foregroundColor(.white)
                    }
                    .frame(height: 130)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 20)
                    .background(Color.purple)
                    .padding(.bottom, 40)
                }
                CustomTab(selection: $selectedTab, tabs: tabOptions)
                            .padding(.horizontal)
                            .padding(.bottom, 20)
                VStack(spacing: 15) {
                    if selectedTab == "Consultations" {
                        //card 1
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                    
                                    Image(systemName: "heart.text.square.fill")
                                        .foregroundColor(Color.blue)
                                        .font(.largeTitle)
                                }
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Cardiology Report")
                                        .font(.headline)
                                    Text("DR. Michel Chen")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    
                                    HStack(spacing: 15) {
                                        Label("Feb 14, 2026", systemImage: "calendar")
                                        Label("10:00 AM", systemImage: "clock")
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                // Download Button
                                Button(action: { /* Download Logic */ }) {
                                    Image(systemName: "square.and.arrow.down")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)
                        //card 2
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                    
                                    Image(systemName: "person.text.rectangle.fill")
                                        .foregroundColor(Color.blue)
                                        .font(.largeTitle)
                                }
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("General Consultation")
                                        .font(.headline)
                                    Text("DR. Michel Chen")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    
                                    HStack(spacing: 15) {
                                        Label("Feb 14, 2026", systemImage: "calendar")
                                        Label("10:00 AM", systemImage: "clock")
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                // Download Button
                                Button(action: { /* Download Logic */ }) {
                                    Image(systemName: "square.and.arrow.down")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)
                        //card 3
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                    
                                    Image(systemName: "bubbles.and.sparkles.fill")
                                        .foregroundColor(Color.blue)
                                        .font(.largeTitle)
                                }
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Dermatology Review")
                                        .font(.headline)
                                    Text("DR. Michel Chen")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    
                                    HStack(spacing: 15) {
                                        Label("Feb 14, 2026", systemImage: "calendar")
                                        Label("10:00 AM", systemImage: "clock")
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                // Download Button
                                Button(action: { /* Download Logic */ }) {
                                    Image(systemName: "square.and.arrow.down")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)
                    } else if selectedTab == "Lab results"{
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                    
                                    Image(systemName: "testtube.2")
                                        .foregroundColor(Color.green)
                                        .font(.largeTitle)
                                }
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Blood test Report")
                                        .font(.headline)
                                    Text("Laboratory")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    
                                    HStack(spacing: 15) {
                                        Label("Feb 14, 2026", systemImage: "calendar")
                                        Label("10:00 AM", systemImage: "clock")
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                // Download Button
                                Button(action: { /* Download Logic */ }) {
                                    Image(systemName: "square.and.arrow.down")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)
                        //card 2
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                    
                                    Image(systemName: "ivfluid.bag.fill")
                                        .foregroundColor(Color.green)
                                        .font(.largeTitle)
                                }
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Urinalysis Report")
                                        .font(.headline)
                                    Text("Laboratory")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    
                                    HStack(spacing: 15) {
                                        Label("Feb 14, 2026", systemImage: "calendar")
                                        Label("10:00 AM", systemImage: "clock")
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                // Download Button
                                Button(action: { /* Download Logic */ }) {
                                    Image(systemName: "square.and.arrow.down")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)
                        //card 3
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                    
                                    Image(systemName: "drop.fill")
                                        .foregroundColor(Color.green)
                                        .font(.largeTitle)
                                }
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Lipid Profile")
                                        .font(.headline)
                                    Text("Laboratory")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    
                                    HStack(spacing: 15) {
                                        Label("Feb 14, 2026", systemImage: "calendar")
                                        Label("10:00 AM", systemImage: "clock")
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                // Download Button
                                Button(action: { /* Download Logic */ }) {
                                    Image(systemName: "square.and.arrow.down")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)
                    }else{
                        //card1
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                    
                                    Image(systemName: "creditcard.fill")
                                        .foregroundColor(Color.purple)
                                        .font(.largeTitle)
                                }
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Consultation Fee")
                                        .font(.headline)
                                    Text("Payment Successful")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    
                                    HStack(spacing: 15) {
                                        Label("Feb 14, 2026", systemImage: "calendar")
                                        Label("10:00 AM", systemImage: "clock")
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                // Download Button
                                Button(action: { /* Download Logic */ }) {
                                    Image(systemName: "square.and.arrow.down")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)
                        //card2
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                    
                                    Image(systemName: "pills.fill")
                                        .foregroundColor(Color.purple)
                                        .font(.largeTitle)
                                }
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Pharmacy Invoice #882")
                                        .font(.headline)
                                    Text("Paid via Mastercard")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    
                                    HStack(spacing: 15) {
                                        Label("Feb 14, 2026", systemImage: "calendar")
                                        Label("10:00 AM", systemImage: "clock")
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                // Download Button
                                Button(action: { /* Download Logic */ }) {
                                    Image(systemName: "square.and.arrow.down")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)
                        //card 3
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                    
                                    Image(systemName: "doc.plaintext.fill")
                                        .foregroundColor(Color.purple)
                                        .font(.largeTitle)
                                }
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Lab Report - Blood Test")
                                        .font(.headline)
                                    Text("Paid via Mastercard")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    
                                    HStack(spacing: 15) {
                                        Label("Feb 14, 2026", systemImage: "calendar")
                                        Label("10:00 AM", systemImage: "clock")
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                // Download Button
                                Button(action: { /* Download Logic */ }) {
                                    Image(systemName: "square.and.arrow.down")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal)

                    }
                }
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    RecordsView()
}
