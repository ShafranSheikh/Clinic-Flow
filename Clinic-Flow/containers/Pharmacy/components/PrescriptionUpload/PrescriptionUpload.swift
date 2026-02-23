import SwiftUI

struct PrescriptionUpload: View {
    var onUpload: () -> Void

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "pills.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .foregroundColor(.blue)

            VStack(spacing: 8) {
                Text("Upload Your Prescription Here")
                    .font(.headline)
                Text("Click here to take a picture or upload one")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

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
                        .stroke(Color.blue, lineWidth: 1)
                )
                .padding(.vertical, 5)
                .padding(.horizontal)

                Button(action: { onUpload() }) {
                    Text("Upload")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .background(Color.blue)
                .cornerRadius(50)
                .padding(.vertical, 5)
                .padding(.horizontal)
            }
        }
        .padding(30)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .stroke(style: StrokeStyle(lineWidth: 1.5, dash: [6]))
                .foregroundColor(.gray.opacity(0.5))
        )
        .padding(.horizontal)
    }
}
