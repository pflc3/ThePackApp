//
//  PostDetailView.swift
//  ThePackApp
//

import SwiftUI

struct PostDetailView: View {
    var body: some View {
        VStack {
            customTitle(title: "Post Title", w: 360, h: 65)
            HStack {
                Image(systemName: "camera.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
                .padding(.leading, 10)
              Spacer()
                Text("category")
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        
            Spacer()
            
            Image(systemName: "camera.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 40)
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            @State var Post: String = ""

            
            
      
            Text("dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr")
            
            Spacer()
            Spacer()
            
            Text("dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn ")
            
            HStack {
                Image ("Image")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(70)
                    .frame(width: 50, height: 70)
                    .foregroundColor(.white)
                    .padding(.leading, 10)
                @State var firstName: String = ""
                let fontSize: CGFloat = 20
                
                    // Question 1: First Name
                    Text("")
                        .font(.system(size: fontSize))
                        .fontWeight(.medium)
                    TextField("Comment your thoughts", text: $firstName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}
    

#Preview {
    PostDetailView()
}
