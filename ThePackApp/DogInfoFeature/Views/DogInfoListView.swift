//
//  DogInfoListView.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoListView: View {
    var body: some View {
        NavigationSplitView {
            VStack{
                // DogList Title
                customTitle(title: "Your Furry Friends", w: 360, h: 65)
                
                // List of DogInfoRows
                List(dogInfoArray) { dogInfoItem in
                    NavigationLink {
                        DogInfoDetailView(dogInfoVar: dogInfoItem)
                    } label: {
                        DogInfoRow(dogInfoVar: dogInfoItem)
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
    DogInfoListView()
}
