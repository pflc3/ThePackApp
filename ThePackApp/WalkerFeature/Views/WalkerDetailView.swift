//
//  WalkerDetailView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerDetailView: View {
    var walkerVar: Walker
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Title
                customTitle(title: walkerVar.name, w: 360, h: 65)
                
                // Headshot Image
                HeadWalkerImage(walkerVar: walkerVar)
                
                // Bio and Description
                VStack(alignment: .leading, spacing: 20) { // Adjusted spacing here
                    detailSection(title: "Bio:", content: walkerVar.bio)
                    detailSection(title: "Description:", content: walkerVar.description)
                }
                .padding(.horizontal, 15)
                
                // Additional details
                VStack(spacing: 10) {
                    detailRow(label: "Location", value: walkerVar.location)
                    Divider()
                    detailRow(label: "Price", value: walkerVar.price)
                    Divider()
                    detailRow(label: "Rating", value: walkerVar.rating)
                    Divider()
                    detailRow(label: "Email", value: walkerVar.email)
                    Divider()
                    detailRow(label: "Phone Number", value: walkerVar.phoneNumber)
                }
                .padding()
                .background(LinearGradient(
                    gradient: Gradient(colors: [Color.blue.opacity(0.15), Color.white.opacity(0.95)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
                .cornerRadius(15)
                .shadow(color: Color.blue.opacity(0.4), radius: 10, x: 0, y: 5)
                .frame(maxWidth: 350, alignment: .center)
            }
            .padding()
        }
        .background(blueGradient())
    }
}

// Detail Section
func detailSection(title: String, content: String) -> some View {
    VStack(alignment: .leading, spacing: 10) { // Even spacing within the section
        Text(title)
            .font(.system(size: 18))
            .fontWeight(.bold)
            .foregroundColor(Color.blue.opacity(0.95))
        Text(content)
            .font(.body)
            .padding(12)
            .background(customRectangle())
    }
}

func detailRow(label: String, value: String) -> some View {
    HStack {
        Text(label + ":")
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(Color.blue.opacity(0.95))
        Spacer()
        Text(value)
            .font(.subheadline)
            .foregroundColor(.primary)
    }
}

#Preview("Emmanuel") {
    WalkerDetailView(walkerVar: walkerArray[0])
}

#Preview("Wanda") {
    WalkerDetailView(walkerVar: walkerArray[1])
}
