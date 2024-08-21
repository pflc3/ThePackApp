//
//  DogInfoListView.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoListView: View {
    var body: some View {
        NavigationSplitView {
            List(dogInfoArray) { dogInfoVar in
                NavigationLink {
                    DogInfoDetailView(dogInfoVar: dogInfoVar)
                } label: {
                    DogInfoRow(dogInfoVar: dogInfoVar)
                }
            }
            .navigationTitle("Your Furry Friends")
        } detail: {
            Text("Select a dog info detail page")
        }
    }
}

#Preview {
    DogInfoListView()
}
