//
//  PostBoardListView.swift
//  ThePackApp
//

import SwiftUI

struct PostBoardListView: View {
    var body: some View {
        NavigationSplitView {
            VStack {
                // PostList Title
                customTitle(title: "Bark Board", w: 360, h: 65)
                
                // List of PostRows
                List(postArray) { postItem in
                    NavigationLink {
                        PostDetailView(postVar: postItem)
                    } label: {
                        PostRow(postVar: postItem)
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .background(blueGradient())
        } detail: {
            Text("Select a post detail page")
        }
    }
}

#Preview {
    PostBoardListView()
}


