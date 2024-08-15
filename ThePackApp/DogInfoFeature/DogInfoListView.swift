//
//  DogInfoListView.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoListView: View {
    var body: some View {
        VStack {
            // Title
            Text("Your Furry Friends")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue.opacity(0.9))
                .frame(width: 340, height:65)
                .background(Color.white)
                .cornerRadius(15)
                .shadow(radius: 40)
            
            Spacer()
            
            VStack(spacing: 30) {
                DogInfoRow()
                DogInfoRow()
                DogInfoRow()
            }
            .padding(.bottom, 30)
            
            Spacer()
        }
        .background(LinearGradient(
            gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.white.opacity(0.8)]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        ))
    }
}

#Preview {
    DogInfoListView()
}

