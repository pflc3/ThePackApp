//
//  PostDetailView.swift
//  ThePackApp
//

import SwiftUI

struct PostDetailView: View {
    @State private var comment: String = ""
    
    var body: some View {
        VStack {
            customTitle(title: "Post Title", w: 360, h: 65)
            
            HStack {
                Image(systemName: "camera.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 25)
                    .foregroundColor(.blue)
                Text("Category")
                    .foregroundColor(.blue)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr")
                .padding()
            
            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .foregroundColor(.blue)
                TextField("Add a comment...", text: $comment)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            Spacer()
        }
    }
}
    

    
#Preview {
        PostDetailView()
    }

