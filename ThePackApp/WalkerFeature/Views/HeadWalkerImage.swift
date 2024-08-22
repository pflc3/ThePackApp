//
//  HeadWalkerImage.swift
//  ThePackApp
//
//  Created by Estuardo Lopez Letona on 8/20/24.
//

import SwiftUI

struct HeadWalkerImage: View {
    var walkerVar: Walker
    
    var body: some View {
        // Headshot walker pic
        walkerVar.headImageView
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 210)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(LinearGradient(
                        gradient: Gradient(colors: [Color.blue.opacity(0.9), Color.white.opacity(0.9)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ), lineWidth: 8)
            )
            .shadow(color: Color.blue.opacity(0.5), radius: 10, x: 0, y: 5)
        
    }
}

#Preview("Emmanuel") {
    HeadWalkerImage(walkerVar: walkerArray[0])
}

#Preview("Wanda") {
    HeadWalkerImage(walkerVar: walkerArray[1])
}
