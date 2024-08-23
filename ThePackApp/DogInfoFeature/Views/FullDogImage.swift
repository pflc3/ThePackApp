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
                    .stroke(Color.white.opacity(0.8), lineWidth: 3)
            }
            .shadow(radius: 10)
    }
}

#Preview {
    FullDogImage(imageVar: Image("goldenPupBody"))
}
