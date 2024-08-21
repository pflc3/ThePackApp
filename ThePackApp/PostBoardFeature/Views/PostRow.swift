//
//  PostRow.swift
//  ThePackApp
//

import SwiftUI

struct PostRow: View {
    var postVar: Post
    
    var body: some View {
        HStack {
            Image("postLogo")
                .resizable()
                .frame(width: 45, height: 45)
                .cornerRadius(10)
            
            Text(postVar.title)
                .font(.title3)
                .fontWeight(.medium)
                .padding(.leading, 5)
            
            Spacer()
            
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
