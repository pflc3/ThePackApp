//
//  WalkerRow.swift
//  ThePackApp
//

import SwiftUI

struct WalkerRow: View {
    var walkerVar: Walker
    
    var body: some View {
        HStack {
            walkerVar.headImageView
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 55, height: 55)
            
            Text(walkerVar.name)
                .font(.title3)
                .fontWeight(.medium)
            
            Spacer()
            
            Image(systemName: "figure.walk")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .foregroundColor(.gray)
           
        }
    }
}

#Preview {
    Group {
        WalkerRow(walkerVar: walkerArray[0])
        WalkerRow(walkerVar: walkerArray[1])
    }
}
