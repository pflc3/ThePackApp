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
                WalkerRow(walkerVar: walkerArray[0])
                WalkerRow(walkerVar: walkerArray[1])
                WalkerRow(walkerVar: walkerArray[2])
            }
        }
        .scrollContentBackground(.hidden)
        .background(blueGradient())
    }
}
#Preview {
    WalkerListView()
}
