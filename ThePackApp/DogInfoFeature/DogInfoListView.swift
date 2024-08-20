//
//  DogInfoListView.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoListView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Page Title
                customTitle(title: "Your Furry Friends", w: 340, h: 65)
                
                Spacer()
                
                VStack(spacing: 35) {
                    DogInfoRow()
                    DogInfoRow()
                    DogInfoRow()
                }
                .padding(.bottom, 25)
                
                Spacer()
            }
            .padding()
            .background(blueGradient())
        }
    }
}

#Preview {
    DogInfoListView()
}
