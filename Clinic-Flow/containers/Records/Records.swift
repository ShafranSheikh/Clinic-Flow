import SwiftUI

struct RecordsView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(["Blood Test", "X-Ray Result", "Vaccination Record"], id: \.self) { record in
                    HStack {
                        Image(systemName: "doc.fill")
                            .foregroundColor(.red)
                        VStack(alignment: .leading) {
                            Text(record)
                                .font(.headline)
                            Text("Updated 2 days ago")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Records")
        }
    }
}

#Preview {
    RecordsView()
}
