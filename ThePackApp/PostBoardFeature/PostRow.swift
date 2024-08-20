//
//  PostRow.swift
//  ThePackApp
//

import SwiftUI

struct PostRow: View {
    var body: some View {
        NavigationLink(destination: PostDetailView()) {
            HStack {
                Image(systemName: "camera.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding(.leading, 10)
                
                
                Text("Post Title")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.leading, 10)
                
                Spacer()
                
                Text("Category")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding(.trailing, 10)
                
                
            }
            .padding()
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.blue]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(15)
            .shadow(color: Color.blue.opacity(0.5), radius: 5, x: 0, y: 2)
            .scaleEffect(1)
            .padding(.horizontal)
        }
    }
}


