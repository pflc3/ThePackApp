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
            
            VStack(spacing: 20) {
                DogInfoRow()
                DogInfoRow()
                DogInfoRow()
            }
            .padding(.bottom, 20)
            
            Spacer()
        }
        
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.white, Color.blue.opacity(0.7)]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        
    }
}

#Preview {
    DogInfoListView()
}

