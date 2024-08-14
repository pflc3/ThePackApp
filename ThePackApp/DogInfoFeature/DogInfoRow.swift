//
//  DogInfoRow.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoRow: View {
    var body: some View {
        HStack {
            Image(systemName: "pawprint.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            Text("Dog Name")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            Spacer()

            Text("Description")
                .font(.subheadline)
                .foregroundColor(.white)
                .padding(.trailing, 10)
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
        .onTapGesture {
            withAnimation(.easeIn(duration: 0.2)) {
                // Perform any action on tap or just a simple scale effect
            }
        }
    }
}


