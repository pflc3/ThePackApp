//
//  PostBoardListView.swift
//  ThePackApp
//

import SwiftUI

struct PostBoardListView: View {
    var body: some View {
        VStack {
            // View Title
            customTitle(title: "Bark Board", w: 340, h: 50)
            
            Spacer()
            
            VStack(spacing: 35) {
                PostRow()
                PostRow()
                PostRow()
                PostRow()
                PostRow()
                PostRow()
            }
            .padding(.bottom, 25)
            
            Spacer()
        }
        .padding()
        .background(blueGradient())
    }
}

#Preview {
    PostBoardListView()
}
