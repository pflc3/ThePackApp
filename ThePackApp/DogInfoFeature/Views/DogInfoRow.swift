//
//  DogInfoRow.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoRow: View {
    var dogInfoVar: DogInfo
    
    var body: some View {
        HStack {
            // Headshot pic
            dogInfoVar.headImageView
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
            
            // Breed
            Text(dogInfoVar.breed)
                .font(.title3)
                .fontWeight(.medium)
            
            Spacer()
            
            // Life stage
            Text(dogInfoVar.lifeStage)
                .font(.headline)
                .fontWeight(.light)
        }
    }
}

#Preview {
    Group {
        DogInfoRow(dogInfoVar: dogInfoArray[0])
        DogInfoRow(dogInfoVar: dogInfoArray[1])
    }
}
