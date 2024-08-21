//
//  PostBoardListView.swift
//  ThePackApp
//

import SwiftUI

struct PostBoardListView: View {
    var body: some View {
        VStack {
            customTitle(title: "Bark Board", w: 360, h: 65)
            
            List(postArray) { postItem in
                PostRow(postVar: postItem)
            }
        }
        .scrollContentBackground(.hidden)
        .background(blueGradient())
    }
}

#Preview {
    PostBoardListView()
}


