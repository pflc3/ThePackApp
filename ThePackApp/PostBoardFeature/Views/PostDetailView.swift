//
//  PostDetailView.swift
//  ThePackApp
//

import SwiftUI

struct PostDetailView: View {
    var postVar: Post
    @State private var addComment: String = ""
    @State private var comments: [String] = []
    
    var body: some View {
        VStack(alignment: .leading) {
            // Post Title
            Text(postVar.title)
                .font(.title)
                .foregroundColor(.white)
                .padding(.bottom, 10)
            
            // Catgeory and icon
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
            .padding(.bottom, 20)
            
            // Post description
            Text(postVar.description)
                .foregroundColor(.white)
                .padding(.bottom, 20)
            
            Spacer()
            
            ScrollView {
                // Comments
                VStack(alignment: .leading, spacing: 10) {
                    Divider()
                    
                    Text(postVar.comment1)
                        .foregroundColor(.white)
                    
                    Divider()
                    
                    Text(postVar.comment2)
                        .foregroundColor(.white)
                    
                    Divider()
                    
                    ForEach(comments, id: \.self) { commentItem in
                        Text(commentItem)
                            .foregroundColor(.white)
                        Divider()
                    }
                }
            }
            
            Spacer()
            
            // Add a comment
            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .foregroundColor(.blue.opacity(0.8))
                
                TextField("Add a comment...", text: $addComment, onCommit: {
                    // If addComment is NOT empty,
                    // append addComment to comments array then reset it
                    if (!addComment.isEmpty) {
                        comments.append(addComment)
                        addComment = ""
                    }
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.black)
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
