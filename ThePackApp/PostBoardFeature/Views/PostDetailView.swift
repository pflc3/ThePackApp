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
            .shadow(radius: 5)
            .cornerRadius(15)
            
            // Title
            Text(postVar.title)
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                .foregroundColor(.white)
                .padding(.all, 10)
                .background(customRectangle(colorVar:. blue))
                .shadow(radius: 20)
            
            Spacer().frame(height: 25)
            
            // Description
            Text(postVar.description)
                .font(.system(size: 20))
                .fontWeight(.medium)
                .padding()
                .background(customRectangle())
            
            Spacer().frame(height: 25)
            
            // Comment Section Title
            Text("Comments")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(customRectangle(colorVar: .blue))
                
            
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

