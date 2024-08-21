//
//  WalkersListView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerListView: View {
    var body: some View {
        VStack {
            customTitle(title: "Woofless Walkers", w: 360, h: 65)

            List {
                WalkerRow()
                WalkerRow()
                WalkerRow()
                WalkerRow()
                WalkerRow()
                WalkerRow()
                WalkerRow()
                WalkerRow()
                WalkerRow()
                WalkerRow()
            }
            
        }
        .scrollContentBackground(.hidden)
        .background(blueGradient())
    }
}
#Preview {
    WalkerListView()
}
