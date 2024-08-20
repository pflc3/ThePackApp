//
//  WalkerDetailView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerDetailView: View {
    var body: some View {
        VStack {
            customTitle(title: "Walker Name", w: 360, h: 65)
            
            Spacer().frame(height:40)
            
            Image("walkerGirl")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 160)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 1)
                }
                .shadow(radius: 7)
            
            Spacer()
            
            Text("Email: name@example.com")
                .padding(.bottom, 5)
            Text("Phone: (123) 456-7890")
                .padding(.bottom, 5)
            Text("Address: 123 Washington St")
                .padding(.bottom, 5)
            
            Spacer()
        }
        .padding()
        .background(blueGradient())
    }
}

#Preview {
    WalkerDetailView()
}
