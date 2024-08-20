//
//  DogInfoRow.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoRow: View {
    var body: some View {
        NavigationLink(destination: DogInfoDetailView()) {
            HStack {
                Image(systemName: "pawprint.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .padding(.leading, 10)
                
                Text("Dog Breed")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding(.leading, 10)
                
                Spacer()
                
                Image("goldenPup")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 45)
            }
            .padding()
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.blue]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(15)
            .shadow(color: Color.blue.opacity(0.5), radius: 5, x: 0, y: 2)
            .scaleEffect(1)
            .padding(.horizontal)
        }
    }
}
