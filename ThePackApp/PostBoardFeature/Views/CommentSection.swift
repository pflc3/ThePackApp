//
//  CommentSection.swift
//  ThePackApp
//

import SwiftUI

// Comment object
struct Comment: Identifiable {
    var id: String = UUID().uuidString
    var username: String
    var text: String
    var date: Date = Date()
}

// Comment Row
struct CommentRow: View {
    var commentVar: Comment
    
    var body: some View {
        HStack(alignment: .top) {
            // Profile pic
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.blue.opacity(0.8))
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    // Username
                    Text(commentVar.username)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    // Date
                    Text(dateFormatted(commentVar.date))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                // Comment text
                Text(commentVar.text)
                    .font(.body)
                    .fontWeight(.medium)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(8)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
    
    // Formats date to short version
    func dateFormatted(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter.string(from: date)
    }
}

struct CommentSection: View {
    var postVar: Post
    
    // Declare and initialize variables
    @State private var commentsArray: [Comment] = []
    @State private var newComment: String = ""
    
    // Initialize commentsArray
    init(postVar: Post) {
        self.postVar = postVar
        _commentsArray = State(initialValue: [
            Comment(username: postVar.user1, text: postVar.comment1),
            Comment(username: postVar.user2, text: postVar.comment2)
        ])
    }
    
    var body: some View {VStack {
            // Scroll view comments
            ScrollView() {
                ForEach(commentsArray) { commentItem in
                    CommentRow(commentVar: commentItem)
                }
            }
        
            
            HStack {
                // Profile pic
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.blue.opacity(0.8))
                
                // Add a comment
                TextField("Add a comment...", text: $newComment)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Submit comment button
                Button(action: {
                    // If the new comment is NOT empty then, make a temporary comment object  with that new comment and insert it into the array
                    // Lastly clear the newComment to be used again
                    if(!newComment.isEmpty) {
                        let tempComment: Comment = Comment(username: globalUsername, text: newComment)
                        commentsArray.insert(tempComment, at: 0)
                        newComment = ""
                    }
                }) {
                    Image(systemName: "arrow.up.circle.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.blue.opacity(0.8))
                }
            }
        }
    }
}

#Preview("Walk Question") {
    CommentSection(postVar: postArray[0])
}

#Preview("Bath Question") {
    CommentSection(postVar: postArray[1])
}
