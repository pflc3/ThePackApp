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
                
                VStack(spacing: 15) {
                    DogInfoRow()
                    DogInfoRow()
                    DogInfoRow()
                }
                Spacer()
                
                VStack(spacing: 15) {
                    DogInfoRow()
                    DogInfoRow()
                    DogInfoRow()
                }
                Spacer()
                
                VStack(spacing: 15) {
                    DogInfoRow()
                    DogInfoRow()
                    DogInfoRow()
                }
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
