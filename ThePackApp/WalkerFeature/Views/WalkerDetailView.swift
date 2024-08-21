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
            
            HeadWalkerImage()
            
            Spacer()
            Text("contact info:")
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
