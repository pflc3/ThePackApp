//
//  WalkersListView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerListView: View {
    var body: some View {
        NavigationSplitView {
            VStack {
                customTitle(title: "Woofless Walkers", w: 360, h: 65)
                
                List(walkerArray) { walkerItem in
                    NavigationLink {
                        WalkerDetailView(walkerVar: walkerItem)
                    } label: {
                        WalkerRow(walkerVar: walkerItem)
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .background(blueGradient())
        } detail: {
            Text("Select a dog info detail page")
        }
    }
}
    
#Preview {
    WalkerListView()
}
