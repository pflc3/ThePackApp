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
            // Camera icon and category
            HStack {
                Image(systemName: "camera.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                Text(postVar.category)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(Color.blue.opacity(0.9))
            .clipShape(Capsule())
            .shadow(radius: 5)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // Post Title
            Text(postVar.title)
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
                .padding(.all, 10)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.blue.opacity(0.9))
                        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 5)
                )
                    .shadow(radius: 20)
            
            Spacer().frame(height: 20)
            
            ScrollView {
                Text(postVar.description)
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white.opacity(0.9))
                            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 5)
                    )
                
                Spacer().frame(height: 20)
                
                // Comments Section Title
                Text("Comments")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.blue.opacity(0.9))
                            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 5)
                    )
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer().frame(height: 10)
            
                // Comments Section
                VStack(alignment: .leading, spacing: 15) {
                    // New comments
                    ForEach(comments, id: \.self) { commentItem in
                        displayComment(text: commentItem, user: globalUsername)
                    }
                    
                    // Predefined comments
                    displayComment(text: postVar.comment1, user: postVar.user1)
                    displayComment(text: postVar.comment2, user: postVar.user2)
                }
                //.padding(.horizontal, 5)
                .padding(.bottom, 20)
            }
            
            Spacer()
            
            // Add a Comment
            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.blue.opacity(0.8))
                
                TextField("Add a comment...", text: $addComment)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.black)
                .onSubmit {
                    // If addComment is NOT empty, append it to comments array
                    // Then clear addComment
                    if (!addComment.isEmpty) {
                        comments.insert(addComment, at: 0)
                        addComment = ""
                    }
                }
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

// Display Comment
func displayComment(text: String, user: String) -> some View {
    HStack(alignment: .top) {
        Image(systemName: "person.crop.circle.fill")
            .resizable()
            .frame(width: 30, height: 30)
            .foregroundColor(.blue.opacity(0.7))
        
        VStack{
            Text(user)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(text)
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding(.vertical, 5)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(8)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
