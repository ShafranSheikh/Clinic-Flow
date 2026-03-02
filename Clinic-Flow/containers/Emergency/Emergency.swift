import SwiftUI

struct Emergency: View{
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
                        Text("Emergency Contacts ")
                            .font(.title.bold())
                        Text("Critical medical information")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                }
                .frame(height: 170)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.vertical, 20)
                .background(Color.red)
                .padding(.bottom, 30)
                
                
                VStack(spacing: 25) {
                    VStack(spacing: 15) {
                    
                        ZStack {
                            Circle()
                                .fill(Color.orange.opacity(0.9))
                                .frame(width: 80, height: 80)
                            Image(systemName: "phone.fill.badge.plus")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                        }
                        .padding(.top, 10)
                        VStack(spacing: 5) {
                            Text("Emergency services")
                                .font(.headline)
                                .foregroundColor(.gray)
                            Text("Call for immediate assistant")
                                .font(.subheadline)
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "phone.badge.plus")
                                Text("Call 345")
                            }
                            .font(.headline)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(40)
                        }
                        .padding(.horizontal, 40)
                        .padding(.bottom, 10)
                    }
                    .padding()
                    .background(Color.red.opacity(0.1))
                    .cornerRadius(20)

                    
                    VStack(spacing: 15) {
                    
                        ZStack {
                            Circle()
                                .fill(Color.orange.opacity(0.9))
                                .frame(width: 80, height: 80)
                            Image(systemName:"phone.fill.badge.plus")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                        }
                        .padding(.top, 10)
                        
                        VStack(spacing: 5) {
                            Text("Emergency services")
                                .font(.headline)
                                .foregroundColor(.gray)
                            Text("Call for immediate assistant")
                                .font(.subheadline)
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        
                        Button(action: { }) {
                            HStack {
                                Image(systemName: "phone.badge.plus")
                                Text("Call 125")
                            }
                            .font(.headline)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(40)
                        }
                        .padding(.horizontal, 40)
                        .padding(.bottom, 10)
                    }
                    .padding()
                    .background(Color.red.opacity(0.1))
                    .cornerRadius(20)
                }
                    .padding(.horizontal)
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}

