import SwiftUI

struct VisitTimeline : View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0){
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Button(action: { dismiss() }){
                            Image(systemName: "arrow.left")
                        }
                        Text("Visit Timeline")
                            .font(.title.bold())
                        Text("Track your visit progress in real time")
                            .font(.subheadline)
                    }
                    .foregroundColor(.black)
                }
                .frame(height: 280)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
}
