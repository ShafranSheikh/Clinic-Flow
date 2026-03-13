import SwiftUI

struct Laboratory: View{
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing:0){
                    //header
                    VStack(alignment: .leading) {
                        Spacer()
                        VStack(alignment: .leading) {
                            Button(action: { MainNavigation(goToTab: 0) }){
                                Image(systemName: "arrow.left")
                            }
                            Text("Lab ")
                                .font(.title.bold())
                            Text("View and test your test results")
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
                    
                    VStack(spacing: 20) {
                        Image(systemName: "testtube.2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.green)
                        
                        VStack(spacing: 8) {
                            Text("No Lab tests scheduled")
                                .font(.headline)
                            Text("Click below to schedle your tests")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        
                        HStack(spacing: 6) {
                            NavigationLink(destination: LabTests()) {
                                HStack {
                                    Image(systemName: "calendar.badge.plus")
                                    Text("Book")
                                        .bold()
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(50)
                            }
                        }
                    }
                    .padding(30)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(style: StrokeStyle(lineWidth: 1.5, dash: [6]))
                            .foregroundColor(.gray.opacity(0.5))
                    )
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                    
                    VStack(alignment: .leading, spacing : 0 ){
                        HStack{
                            VStack(alignment: .leading, spacing: 6){
                                Text("Complete blood count")
                                    .font(.headline)
                                HStack{
                                    Image(systemName: "calendar")
                                    Text("Feb 14 2026")
                                        .font(.caption)
                                }
                            }
                            Spacer()
                            Text("Normal")
                                .font(.caption.bold())
                                .padding(.horizontal, 10)
                                .padding(.vertical, 4)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding()
                        .background(Color.green.opacity(0.1))
                        
                        VStack(spacing: 0) {
                            // row1
                            VStack(alignment: .leading, spacing: 6) {
                                HStack {
                                    Text("White blood cells")
                                        .font(.subheadline).bold()
                                    Spacer()
                                    Text("7.5")
                                        .font(.subheadline.bold())
                                        .foregroundColor(.green)
                                }
                                HStack {
                                    Text("Reference 40.243.78")
                                        .font(.caption2)
                                        .foregroundColor(.secondary)
                                    Spacer()
                                    Text("x10^9/L")
                                        .font(.caption2)
                                        .foregroundColor(.secondary)
                                }
                                Text("Within normal range")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                
                                Divider().padding(.top, 8)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                            
                            // row2
                            VStack(alignment: .leading, spacing: 6) {
                                HStack {
                                    Text("White blood cells")
                                        .font(.subheadline).bold()
                                    Spacer()
                                    Text("7.5")
                                        .font(.subheadline.bold())
                                        .foregroundColor(.green)
                                }
                                HStack {
                                    Text("Reference 40.243.78")
                                        .font(.caption2)
                                        .foregroundColor(.secondary)
                                    Spacer()
                                    Text("x10^9/L")
                                        .font(.caption2)
                                        .foregroundColor(.secondary)
                                }
                                Text("Within normal range")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                
                                Divider().padding(.top, 8)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 12)                        }
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "square.and.arrow.down")
                                Text("Download PDF")
                                    .bold()
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                        }
                        .padding()
                    }
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 0.5)
                    .padding(.horizontal)
                    
                    VStack(alignment : .leading, spacing: 12){
                        HStack(spacing: 10) {
                            Image(systemName: "star")
                                .font(.title3.bold())
                                .foregroundColor(.green)
                            
                            Text("Doctor's Note")
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                        
                        Text("Your cholostrol levels are high. Please schedule a follow-up appointment to discuss dietary changes and treatment options.")
                            .foregroundColor(Color.black)
                            .font(.footnote)
                        NavigationLink(destination: SelectSpecialityView()) {
                            HStack {
                                Image(systemName: "calendar.badge.plus")
                                Text("Schedule Follow-Up")
                                    .bold()
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(50)
                        }
                        
                    }
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.green.opacity(0.1))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    .padding(.vertical)
                    
                    Text("Previous lab reposrts")
                        .font(.title2.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                    
                    VStack(alignment: .leading) {
                        HStack(spacing: 15) {
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
                            
                            Button(action: {}) {
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
                            
                            Button(action: { }) {
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
            .ignoresSafeArea(edges: .top)
            .navigationBarBackButtonHidden(true)
        }
    }
}

