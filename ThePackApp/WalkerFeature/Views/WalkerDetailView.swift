//
//  WalkerDetailView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerDetailView: View {
    var walkerVar: Walker
    
    var body: some View {
        VStack {
            customTitle(title: walkerVar.name, w: 360, h: 65)
            
            Spacer().frame(height:40)
            
            HeadWalkerImage(walkerVar: walkerVar)
            
            Spacer()
            Text("contact info:")
            Text("Email: "+walkerVar.email)
                .padding(.bottom, 5)
            Text("Phone: "+walkerVar.phoneNumber)
                .padding(.bottom, 5)
            Text("Location: "+walkerVar.location)
                .padding(.bottom, 5)
            Text("Bio: "+walkerVar.bio)
                .padding(.bottom, 5)
            
            Spacer()
        }
        .padding()
        .background(blueGradient())
    }
}

#Preview("Kyle Rice") {
    WalkerDetailView(walkerVar: walkerArray[0])
}

#Preview("Jamal Specter") {
    WalkerDetailView(walkerVar: walkerArray[1])
}
