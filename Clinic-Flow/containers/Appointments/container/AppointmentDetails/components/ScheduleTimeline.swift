import SwiftUI

struct ScheduleTimeline: View{
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
                        Text("Schedule timeline")
                            .font(.title.bold())
                        Text("Track your schedule")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                }
                .frame(height: 130)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.vertical, 20)
                .background(Color.blue)
                .padding(.bottom, 30)
        
                VStack(spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack(alignment: .top, spacing: 20) {
                            VStack(spacing: 0) {
                                VStack {
                                    Circle()
                                        .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                                        .frame(width: 22, height: 22)
                                }
                                .frame(width: 44, height: 44)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(22)
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 1, height: 60)
                            }
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Check-in")
                                    .font(.headline)
                                Text("9:30 AM")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .frame(width: 120)
                            .padding(.top, 8)
                            
                        }

                        HStack(alignment: .top, spacing: 20) {
                            
                            VStack(spacing: 0) {
                               
                                VStack {
                                    Circle()
                                        .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                                        .frame(width: 22, height: 22)
                                }
                                .frame(width: 44, height: 44)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(22)
                                
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 1, height: 60)
                            }
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Registration")
                                    .font(.headline)
                                Text("9:35 AM")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .frame(width: 120)
                            .padding(.top, 8)
                            
                        }
                        HStack(alignment: .top, spacing: 20) {
                            
                            VStack(spacing: 0) {
                              
                                VStack {
                                    Circle()
                                        .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                                        .frame(width: 22, height: 22)
                                }
                                .frame(width: 44, height: 44)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(22)
                                
                               
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 1, height: 60)
                            }
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Consultation")
                                    .font(.headline)
                                Text("10:15 AM")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .frame(width: 120)
                            .padding(.top, 8)
                        }

                        HStack(alignment: .top, spacing: 20) {
                           
                            VStack(spacing: 0) {
                                
                                VStack {
                                    Circle()
                                        .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                                        .frame(width: 22, height: 22)
                                }
                                .frame(width: 44, height: 44)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(22)
                                
                             
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 1, height: 60)
                            }
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Lab tests")
                                    .font(.headline)
                                Text("After consulation")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .frame(width: 120)
                            .padding(.top, 8)
                        }

                        HStack(alignment: .top, spacing: 20) {
                            
                            VStack(spacing: 0) {
                                
                                VStack {
                                    Circle()
                                        .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                                        .frame(width: 22, height: 22)
                                }
                                .frame(width: 44, height: 44)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(22)
                                
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 1, height: 60)
                            }
                            
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Pharmacy")
                                    .font(.headline)
                                Text("After tests")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .frame(width: 120)
                            .padding(.top, 8)
                        }
                    }
                    .padding(30)
                    .background(Color.white)
                    .cornerRadius(15)
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray.opacity(0.1), lineWidth: 1))
                    .padding(.horizontal)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}

