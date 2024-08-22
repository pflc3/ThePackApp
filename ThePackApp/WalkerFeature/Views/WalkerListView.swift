//
//  WalkersListView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerListView: View {
    var body: some View {
        NavigationSplitView {
            ZStack {
                VStack {
                    // WalkerList Title
                    customTitle(title: "Woofless Walkers", w: 360, h: 65)
                    
                    // List of WalkerRows
                    List(walkerArray) { walkerItem in
                        NavigationLink {
                            WalkerDetailView(walkerVar: walkerItem)
                                .toolbar(.hidden, for: .tabBar)
                        } label: {
                            WalkerRow(walkerVar: walkerItem)
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                .background(blueGradient())
                
                // Post button
                VStack {
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            // Placeholder action for now
                        }) {
                            Text("Become Walker")
                                .font(.headline)
                                .padding(.all, 15)
                                .background(Color.blue.opacity(0.9))
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        }
                        .padding(.horizontal, 25)
                        .padding(.vertical, 25)
                        
                        Spacer()
                    }
                }
            }
        } detail: {
            Text("Select a walker detail page")
        }
    }
}
    
#Preview {
    WalkerListView()
}
