//
//  WalkerDetailView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerDetailView: View {
    var walkerVar: Walker
    
    var body: some View {
        ScrollView {
            VStack() {
                // Title
                customTitle(title: walkerVar.name, w: 360, h: 65)
                
                // Headshot Image
                HeadWalkerImage(walkerVar: walkerVar)
                
                // Bio and Description
                VStack(alignment: .leading, spacing: 20) { // Adjusted spacing here
                    detailSection(title: "Bio", content: walkerVar.bio)
                    detailSection(title: "Description", content: walkerVar.description)
                }
                .padding(.horizontal, 15)
                
                Spacer().frame(height: 30)
                
                // Additional details
                VStack(spacing: 10) {
                    detailRow(label: "Location", icon: "mappin.and.ellipse", value: walkerVar.location)
                    Divider()
                    detailRow(label: "Price", icon: "dollarsign.circle", value: walkerVar.price)
                    Divider()
                    detailRow(label: "Rating", icon: "star", value: walkerVar.rating)
                    Divider()
                    detailRow(label: "Email", icon: "envelope", value: walkerVar.email)
                    Divider()
                    detailRow(label: "Phone Number", icon: "phone", value: walkerVar.phoneNumber)
                }
                .padding()
                .background(Color.white)
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
            .foregroundColor(Color.blue.opacity(0.9))
        Text(content)
            .font(.body)
            .padding(12)
            .background(customRectangle())
    }
}

func detailRow(label: String, icon: String, value: String) -> some View {
    HStack {
        Image(systemName: icon)
            .font(.system(size: 18))
            .foregroundColor(.blue.opacity(0.9))
        Text(label)
            .font(.system(size: 16))
            .fontWeight(.semibold)
            .foregroundColor(Color.blue.opacity(0.9))
        
        Spacer()
        
        Text(value)
            .font(.system(size: 16))
            .foregroundColor(.primary)
    }
}

#Preview("Emmanuel") {
    WalkerDetailView(walkerVar: walkerArray[0])
}

#Preview("Wanda") {
    WalkerDetailView(walkerVar: walkerArray[1])
}
