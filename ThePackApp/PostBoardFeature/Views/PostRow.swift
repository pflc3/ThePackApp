//
//  PostRow.swift
//  ThePackApp
//

import SwiftUI

struct PostRow: View {
    var body: some View {
        HStack {
            Image(systemName: "camera.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            Text("Post Title")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            Spacer()
            
            Text("Category")
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.trailing, 10)
        }
        .padding(.vertical, 12)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.blue]),
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .cornerRadius(15)
        .shadow(color: Color.blue.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    Group {
        PostRow()
        PostRow()
    }
}

