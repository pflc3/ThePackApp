//
//  DogInfoListView.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoListView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Your Dogs!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding(.leading, 20)
                .padding(.top, 20)

            DogInfoRow()
            DogInfoRow()
            DogInfoRow()
            
        }
        .background(Color.white.ignoresSafeArea())
    }
}

#Preview {
    DogInfoListView()
}
