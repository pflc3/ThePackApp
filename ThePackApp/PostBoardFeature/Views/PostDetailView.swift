//
//  PostDetailView.swift
//  ThePackApp
//

import SwiftUI

struct PostDetailView: View {
    var postVar: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            // Camera icon and category
            HStack {
                Image(systemName: "camera.fill")
                Text(postVar.category)
            }
            
            // Title
            Text(postVar.title)
            
            Spacer().frame(height: 25)
            
            // Description
            Text(postVar.description)
            
            Spacer().frame(height: 25)
            
            // Comment Section Title
            Text("Comments")
            
            Spacer().frame(height: 10)
            
            //Comment Section
            CommentSection(postVar: postVar)
        }
        .padding()
        .background(blueGradient())
    }
}

#Preview("Walking Question") {
    PostDetailView(postVar: postArray[0])
}

#Preview("Bath Question") {
    PostDetailView(postVar: postArray[1])
}

// Rectangle for background
func customRectangle(colorVar: Color = .white) -> some View {
    RoundedRectangle(cornerRadius: 15)
        .fill(colorVar.opacity(0.9))
        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 5)
}

