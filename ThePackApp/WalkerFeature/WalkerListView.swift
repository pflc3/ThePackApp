//
//  WalkersListView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Page Title
                    customTitle(title: "Woof Walkers", w: 340, h: 50)
                    
                    Spacer().frame(height: 50)
                    
                    VStack(spacing: 40) {
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
                    
                    Spacer().frame(height: 50)
                }
                .padding()
            }
            .background(blueGradient())
        }
    }
}

#Preview {
    WalkerListView()
}
