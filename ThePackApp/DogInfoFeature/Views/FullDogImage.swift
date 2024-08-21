//
//  FullDogImage.swift
//  ThePackApp
//

import SwiftUI

struct FullDogImage: View {
    var imageVar: Image
    
    var body: some View {
        // Full body dog pic
        imageVar
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 210)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.white.opacity(0.4), lineWidth: 1.3)
            }
            .shadow(radius: 8)
    }
}

#Preview {
    FullDogImage(imageVar: Image("goldenPupBody"))
}
