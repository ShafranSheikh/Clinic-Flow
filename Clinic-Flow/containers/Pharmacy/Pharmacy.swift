import SwiftUI

struct Pharmacy: View {
    @State private var selectedTab = "New"
    @State private var orderStatus: String = "empty"
    let tabOptions = ["New", "Past"]
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {

                VStack(alignment: .leading) {
                    Spacer()
                    VStack(alignment: .leading) {
                        Button(action: { dismiss() }) {
                            Image(systemName: "arrow.left")
                        }
                        Text("Pharmacy ")
                            .font(.title.bold())
                        Text("Get your prescribed medicines here")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                }
                .frame(height: 130)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.vertical, 20)
                .background(Color.blue)
                .padding(.bottom, 40)

                CustomTab(selection: $selectedTab, tabs: tabOptions)
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                VStack(spacing: 15) {
                    if selectedTab == "New" {
                        if orderStatus == "empty" {
                            PrescriptionUpload(onUpload: {
                                withAnimation { orderStatus = "progress" }
                            })
                            
                            VStack(alignment: .leading) {
                                HStack(spacing: 15) {
                                    // Icon Background
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color.white)
                                            .frame(width: 50, height: 50)

                                        Image(systemName: "doc.text.fill")
                                            .foregroundColor(Color.blue)
                                            .font(.largeTitle)
                                    }

                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("Last upload prescription")
                                            .font(.headline)
                                        Text("Total 4 medicines")
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)

                                        HStack(spacing: 15) {
                                            Label(
                                                "Feb 14, 2026",
                                                systemImage: "calendar"
                                            )
                                            Button(action: {}) {
                                                Text("Reupload")
                                                    .font(.footnote)
                                                    .foregroundColor(
                                                        Color.white
                                                    )
                                                    .frame(maxWidth: .infinity)
                                                    .padding()
                                            }
                                            .background(.blue)
                                            .frame(width: 100, height: 25)
                                            .cornerRadius(50)
                                            .padding(.horizontal)
                                        }
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                    }

                                }
                                .padding()
                                .background(Color.white)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(
                                            Color.gray.opacity(0.1),
                                            lineWidth: 1
                                        )
                                )
                            }
                        } else if orderStatus == "progress" {
                            OrderProgress(onComplete: {
                                withAnimation { orderStatus = "completed" }
                            })
                        } else if orderStatus == "completed" {
                            OrderCompleted()
                        }
                        VStack(alignment: .leading, spacing: 12) {
                            HStack(spacing: 10) {
                                Image(systemName: "star")
                                    .font(.title3.bold())
                                    .foregroundColor(.blue)

                                Text("Pharmacy Operations")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                            HStack(alignment: .center, spacing: 10) {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 6))
                                Text("Working Hours: 7:30AM To 11:00PM")
                                    .foregroundColor(Color.black)
                                    .font(.footnote)
                                Spacer()
                            }
                            HStack(alignment: .center, spacing: 10) {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 6))
                                Text("Orders are processed in queue order")
                                    .foregroundColor(Color.black)
                                    .font(.footnote)
                                Spacer()
                            }
                            HStack(alignment: .center, spacing: 10) {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 6))
                                Text(
                                    "Orders placed outside working hours are not accepted"
                                )
                                .foregroundColor(Color.black)
                                .font(.footnote)
                                Spacer()
                            }
                        }
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(15)
                        .padding(.horizontal)
                        .padding(.vertical)
                    } else {
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)

                                    Image(systemName: "doc.text.fill")
                                        .foregroundColor(Color.blue)
                                        .font(.largeTitle)
                                }

                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Last upload prescription")
                                        .font(.headline)
                                    Text("Total 4 medicines")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)

                                    HStack(spacing: 15) {
                                        Label(
                                            "Feb 14, 2026",
                                            systemImage: "calendar"
                                        )
                                        Button(action: {}) {
                                            Text("Reupload")
                                                .font(.footnote)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .padding()
                                        }
                                        .background(.blue)
                                        .frame(width: 100, height: 25)
                                        .cornerRadius(50)
                                        .padding(.horizontal)
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }

                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(
                                        Color.gray.opacity(0.1),
                                        lineWidth: 1
                                    )
                            )
                        }
                        //card 2
                        VStack(alignment: .leading) {
                            HStack(spacing: 15) {
                                // Icon Background
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)

                                    Image(systemName: "doc.text.fill")
                                        .foregroundColor(Color.blue)
                                        .font(.largeTitle)
                                }

                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Last upload prescription")
                                        .font(.headline)
                                    Text("Total 4 medicines")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)

                                    HStack(spacing: 15) {
                                        Label(
                                            "Feb 14, 2026",
                                            systemImage: "calendar"
                                        )
                                        Button(action: {}) {
                                            Text("Reupload")
                                                .font(.footnote)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .padding()
                                        }
                                        .background(.blue)
                                        .frame(width: 100, height: 25)
                                        .cornerRadius(50)
                                        .padding(.horizontal)
                                    }
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                }

                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(
                                        Color.gray.opacity(0.1),
                                        lineWidth: 1
                                    )
                            )
                        }

                    }
                }
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}
