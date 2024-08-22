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
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    // Username
                    Text(commentVar.username)
                    
                    Spacer()
                    
                    // Date
                    Text(dateFormatted(commentVar.date))
                }
                // Comment text
                Text(commentVar.text)
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
                
                // Add a comment
                
                // Submit comment button
                Button(action: {
                    // If the new comment is NOT empty then, make a temporary comment object  with that new comment and insert it into the array
                    // Lastly clear the newComment to be used again
                    // if()
                }) {
                    //Image()
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
