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
            customTitle(title: "Title", w: 360, h: 65)
            
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
            
               
                
            
            Spacer()
            
            Text("Dog Info Detail View!")
        }
        .padding()
        .background(blueGradient())
    }
}

#Preview {
    DogInfoDetailView()
}
