//
//  PostDetailView.swift
//  ThePackApp
//

import SwiftUI

struct PostDetailView: View {
    var body: some View {
        VStack {
            customTitle(title: "Title", w: 360, h: 65)
            
            Spacer()
            
            // Post Image
            Image("goldenPup")
                .resizable()  // Make the image resizable
                .aspectRatio(contentMode: .fill)  //
                .frame(width: 350, height: 550)
                .clipShape(Rectangle())
                .overlay {
                    
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
    PostDetailView()
}
