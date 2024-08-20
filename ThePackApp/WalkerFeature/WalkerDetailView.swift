//
//  WalkerDetailView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerDetailView: View {
    var body: some View {
        VStack {
            // Walker Name
            customTitle(title: "Walker Name", w: 360, h: 65)
            
            Spacer()
            
            // Person Image
            Image("goldenPup")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 160)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.gray, lineWidth: 4)
                }
                .shadow(radius: 7)
            
            // Small Bio
        
            // Descrition
            
            // General location
            
            // Price
            
            // Rating
            
            // Phone number
        }
        .padding()
        .background(blueGradient())
    }
}

#Preview {
    WalkerDetailView()
}
