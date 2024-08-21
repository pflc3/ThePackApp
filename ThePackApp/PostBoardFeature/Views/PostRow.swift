//
//  PostRow.swift
//  ThePackApp
//

import SwiftUI

struct PostRow: View {
    var body: some View {
        HStack {
            Image("postLogo")
                .resizable()
                .frame(width: 45, height: 45)
                .cornerRadius(10)
            
            Text("Post Title")
                .font(.title3)
                .fontWeight(.medium)
                .padding(.leading, 5)
            
            Spacer()
            
            Text("Category")
                .font(.headline)
                .fontWeight(.light)
        }
    }
}

#Preview {
    Group {
        PostRow()
        PostRow()
    }
}
