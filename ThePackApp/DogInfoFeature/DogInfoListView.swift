//
//  DogInfoListView.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoListView: View {
    var body: some View {
        VStack {
            // View Title
            customTitle(title: "Your Furry Friends", w: 340, h: 65)
            
            Spacer()
            
            VStack(spacing: 30) {
                DogInfoRow()
                DogInfoRow()
                DogInfoRow()
            }
            .padding(.bottom, 30)
            
            Spacer()
        }
        .background(blueGradient(opac: 0.8))
    }
}

#Preview {
    DogInfoListView()
}

