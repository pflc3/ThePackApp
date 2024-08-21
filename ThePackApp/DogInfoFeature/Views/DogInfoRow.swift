//
//  DogInfoRow.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoRow: View {
    var dogInfoVar: DogInfo
    
    var body: some View {
        HStack {
            dogInfoVar.headImageView
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
            
            Text(dogInfoVar.breed)
                .font(.title3)
                .fontWeight(.medium)
            
            Spacer()

            Text(dogInfoVar.lifeStage)
                .font(.headline)
                .fontWeight(.light)
                .padding(.trailing, 10)
        }
    }
}

#Preview {
    Group {
        DogInfoRow(dogInfoVar: dogInfoArray[0])
        DogInfoRow(dogInfoVar: dogInfoArray[1])
    }
}
