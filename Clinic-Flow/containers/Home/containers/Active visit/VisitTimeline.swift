import SwiftUI

struct VisitTimelineView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Solid Clinic Background (Matches your flat style)
            Color.white.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                // MARK: - Header
                VStack(alignment: .leading, spacing: 8) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.black)
                    }
                    .padding(.bottom, 10)
                    
                    Text("Visit Timeline")
                        .font(.system(size: 28, weight: .bold))
                    
                    Text("Track your visit progress in real time")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, 25)
                .padding(.top, 20)
                
                // MARK: - Timeline Card
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        TimelineStepRow(title: "Check-in", time: "9:30 AM", status: .completed)
                        TimelineStepRow(title: "Registration", time: "9:35 AM", status: .completed)
                        TimelineStepRow(title: "Waiting", time: "Now", status: .inProgress)
                        TimelineStepRow(title: "Consultation", time: "~10:15 AM", status: .pending)
                        TimelineStepRow(title: "Lab Tests", time: "After consultation", status: .pending)
                        TimelineStepRow(title: "Pharmacy", time: "After tests", status: .pending, isLast: true)
                    }
                    .padding(25)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.05), radius: 10, y: 5)
                    .padding(20)
                }
            }
        }
        .navigationBarHidden(true)
    }
}

// MARK: - Timeline Row Component
struct TimelineStepRow: View {
    let title: String
    let time: String
    let status: VisitStepStatus
    var isLast: Bool = false
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            // Left Column: Indicator and Line
            VStack(spacing: 0) {
                statusIndicator
                
                if !isLast {
                    Rectangle()
                        .fill(status == .completed ? Color.green.opacity(0.3) : Color.gray.opacity(0.2))
                        .frame(width: 2)
                        .frame(minHeight: 45)
                }
            }
            
            // Middle Column: Text Details
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(time)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            // Right Column: Status Tag
            statusTag
        }
    }
    
    @ViewBuilder
    private var statusIndicator: some View {
        ZStack {
            Circle()
                .fill(statusColor.opacity(0.2))
                .frame(width: 36, height: 36)
            
            if status == .completed {
                Image(systemName: "checkmark")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.green)
            } else if status == .inProgress {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 16, height: 16)
            } else {
                Circle()
                    .stroke(Color.gray.opacity(0.5), lineWidth: 2)
                    .frame(width: 16, height: 16)
            }
        }
    }
    
    @ViewBuilder
    private var statusTag: some View {
        Text(status.rawValue)
            .font(.system(size: 10, weight: .bold))
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(statusColor.opacity(0.1))
            .foregroundColor(statusColor)
            .cornerRadius(10)
    }
    
    private var statusColor: Color {
        switch status {
        case .completed: return .green
        case .inProgress: return .blue
        case .pending: return .gray
        }
    }
}

// MARK: - Models
enum VisitStepStatus: String {
    case completed = "Completed"
    case inProgress = "In Progress"
    case pending = "Pending"
}
