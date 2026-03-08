import SwiftUI

// MARK: - Notification Model
struct NotificationItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let timeAgo: String
    let icon: String
    let iconBgColor: Color
    let isUnread: Bool
}

struct NotificationsView: View {
    @Environment(\.dismiss) var dismiss
    
    let notifications = [
        NotificationItem(title: "Appoinment Reminder", message: "Your appointment with DR.Michel Chen is tomorrow at 10.00AM", timeAgo: "2 hours ago", icon: "calendar", iconBgColor: .blue, isUnread: true),
        NotificationItem(title: "Queue Update", message: "Your next in line! Please processed to consultation room 204", timeAgo: "5 hours ago", icon: "clock", iconBgColor: .blue, isUnread: true),
        NotificationItem(title: "Lab Results Ready", message: "Your next in line! Please processed to consultation room 204", timeAgo: "1 day ago", icon: "checkmark.circle", iconBgColor: .purple, isUnread: false),
        NotificationItem(title: "Lab Results Ready", message: "Your next in line! Please processed to consultation room 204", timeAgo: "1 day ago", icon: "checkmark.circle", iconBgColor: .purple, isUnread: false),
        NotificationItem(title: "Appoinment Reminder", message: "Your appointment with DR.Michel Chen is tomorrow at 10.00AM", timeAgo: "12 days ago", icon: "calendar", iconBgColor: .gray, isUnread: false)
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            // Header Section
            VStack(alignment: .leading, spacing: 15) {
                Button(action: { dismiss() }) {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                }
                
                HStack(alignment: .lastTextBaseline) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Notifications")
                            .font(.system(size: 28, weight: .bold))
                        Text("2 unread")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Button("Marks all read") {
                        // Action to mark all as read
                    }
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.blue)
                }
            }
            .padding(.horizontal, 25)
            .padding(.top, 20)
            .padding(.bottom, 20)
            
            Divider()
            
            // Notifications List - Now expands to fill the screen
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(notifications) { item in
                        NotificationCard(item: item)
                    }
                }
                .padding(25)
            }
            .background(Color(white: 0.98))
        }
        .navigationBarBackButtonHidden(true)
    }
}

// MARK: - Supporting Components
struct NotificationCard: View {
    let item: NotificationItem
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            // Icon
            ZStack {
                Circle()
                    .fill(item.iconBgColor.opacity(0.15))
                    .frame(width: 48, height: 48)
                Image(systemName: item.icon)
                    .foregroundColor(item.iconBgColor)
                    .font(.system(size: 20))
            }
            
            VStack(alignment: .leading, spacing: 6) {
                Text(item.title)
                    .font(.system(size: 16, weight: .bold))
                Text(item.message)
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                    .lineLimit(2)
                Text(item.timeAgo)
                    .font(.system(size: 11))
                    .foregroundColor(.gray)
                    .padding(.top, 4)
            }
            
            Spacer()
            
            // Unread Dot
            if item.isUnread {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 8, height: 8)
                    .padding(.top, 5)
            }
        }
        .padding(15)
        .background(Color.white)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(item.isUnread ? Color.blue.opacity(0.3) : Color.gray.opacity(0.1), lineWidth: 1)
        )
    }
}

// Preview Provider
struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NotificationsView()
        }
    }
}
