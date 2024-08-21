//
//  PostDetailView.swift
//  ThePackApp
//

import SwiftUI

struct PostDetailView: View {
    var postVar: Post
    @State private var comment: String = ""
    
    var body: some View {
        VStack {
            Text(postVar.title)
                .font(.title)
                .foregroundColor(.white)
        
            HStack {
                Image(systemName: "camera.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 25)
                    .foregroundColor(.white)
                Text(postVar.category)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer().frame(height: 20)
            
            Text(postVar.description)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                Text(postVar.comment1)
                
                Text(postVar.comment2)
            }
            
            Spacer()
            
            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .foregroundColor(.blue.opacity(0.8))
                TextField("Add a comment...", text: $comment)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
        .padding()
        .background(blueGradient())
    }
}


    
#Preview {
    PostDetailView(postVar: postArray[0])
}

#Preview {
    PostDetailView(postVar: postArray[1])
}
