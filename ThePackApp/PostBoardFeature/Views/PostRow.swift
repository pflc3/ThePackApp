//
//  PostRow.swift
//  ThePackApp
//

import SwiftUI

struct PostRow: View {
    var postVar: Post
    
    var body: some View {
        HStack {
            // Icon
            Image("postIcon")
                .resizable()
                .frame(width: 45, height: 45)
                .cornerRadius(10)
            
            // Title
            Text(postVar.title)
                .font(.system(size: 17))
                .fontWeight(.medium)
            
            Spacer()
            
            // Category
            Text(postVar.category)
                .font(.headline)
                .fontWeight(.light)
        }
    }
}

#Preview {
    Group {
        PostRow(postVar: postArray[0])
        PostRow(postVar: postArray[1])
    }
}
