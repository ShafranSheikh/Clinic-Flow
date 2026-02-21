import SwiftUI

struct CustomTab: View {
    @Binding var selection: String
        let tabs: [String]
        
        @Namespace private var animation
        
        var body: some View {
            HStack(spacing: 0) {
                ForEach(tabs, id: \.self) { tab in
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                            selection = tab
                        }
                    }) {
                        ZStack {
                            if selection == tab {
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(Color.white)
                                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
                                    .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                            }
                            
                            Text(tab)
                                .font(.subheadline.bold())
                                .foregroundColor(selection == tab ? .black : .gray)
                                .padding(.vertical, 12)
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
            }
            .padding(4)
            .background(Color.gray.opacity(0.15))
            .cornerRadius(50)
        }
}

