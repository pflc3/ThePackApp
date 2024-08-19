//
//  DogInfoDetailView.swift
//  ThePackApp
//
//  Created by Estuardo Lopez Letona on 8/13/24.
//

import SwiftUI

struct DogInfoDetailView: View {
    var body: some View {
        VStack {
            customTitle(title: "Golden Retriever", w: 360, h: 65)
            
            Spacer().frame(height:40)
            
            Image("goldenPup")
                .resizable()  // Make the image resizable
                .aspectRatio(contentMode: .fill)  //
                .frame(width: 150, height: 160)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.gray, lineWidth: 4)
                }
                .shadow(radius: 7)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Breed: Golden Retriever")
                    .font(.headline)
                Text("Age: 3 years")
                    .font(.subheadline)
                Text("Weight: 65 lbs")
                    .font(.subheadline)
                Text("Likes: Playing fetch, swimming")
                    .font(.subheadline)
            }
            .padding()
            .background(Color.white.opacity(0.8))
            .cornerRadius(10)
            .shadow(radius: 5)
            
            Spacer()
        }
        .padding()
        .background(blueGradient())
    }
}

#Preview {
  DogInfoDetailView()
}
