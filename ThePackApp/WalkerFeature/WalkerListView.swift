//
//  WalkersListView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerListView: View {
    var body: some View {
        VStack {
            // View Title
            customTitle(title: "Woof Walkers", w: 340, h: 65)
            
            Spacer()
            
            VStack(spacing: 35) {
                WalkerRow()
                WalkerRow()
                WalkerRow()
            }
            .padding(.bottom, 25)
            
            Spacer()
        }
        .padding()
        .background(blueGradient())
    }
}

#Preview {
    WalkerListView()
}
