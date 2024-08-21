//
//  HeadWalkerImage.swift
//  ThePackApp
//
//  Created by Estuardo Lopez Letona on 8/20/24.
//

import SwiftUI

struct HeadWalkerImage: View {
    var body: some View {
        Image("dogWalker")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 160)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 1)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    HeadWalkerImage()
}
