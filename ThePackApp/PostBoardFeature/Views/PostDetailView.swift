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

            Image(systemName: "camera.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 40)
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            
            Text("dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr dksjbver wepiofjrnew wdieorh pweiorhjf l2ekfn wdeliwnr")
                .padding()
            
            HStack {
                Image("postPhoto")
                    .resizable()
                    .frame(width: 45, height: 45)
                
                
                
                @State var firstName: String = ""
                // Question 1: First Name
                let fontSize: CGFloat = 20
                
                Text("")
                    .font(.system(size: fontSize))
                    .fontWeight(.medium)
                TextField("Comment your thoughts", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Spacer()
            Spacer()
        
               
                }
            }
        }
    

    
#Preview {
        PostDetailView()
    }

