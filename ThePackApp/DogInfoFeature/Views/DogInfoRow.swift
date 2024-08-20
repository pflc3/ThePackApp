//
//  DogInfoRow.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoRow: View {
    var body: some View {
        HStack {
            Image("goldenPup")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
            
            Text("Dog Breed")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            Spacer()

            Image(systemName: "pawprint.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .foregroundColor(.white)
                .padding(.trailing,10)
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.blue]),
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .cornerRadius(15)
        .shadow(color: Color.blue.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    Group {
        DogInfoRow()
        DogInfoRow()
    }
}
