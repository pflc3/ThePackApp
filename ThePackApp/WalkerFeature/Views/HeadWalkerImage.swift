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
        walkerVar.headImageView
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 210)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 1)
            }
            .shadow(radius: 7)
    }
}

#Preview("Kyle Rice") {
    HeadWalkerImage(walkerVar: walkerArray[0])
}

#Preview("Jamal ") {
    HeadWalkerImage(walkerVar: walkerArray[1])
}
