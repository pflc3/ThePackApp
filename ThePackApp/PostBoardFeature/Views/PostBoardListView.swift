//
//  PostBoardListView.swift
//  ThePackApp
//

import SwiftUI

struct PostBoardListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Page Title
                    customTitle(title: "Bark Board", w: 340, h: 50)
                    
                    Spacer().frame(height: 50)
                    
                    VStack(spacing: 40) {
                        PostRow()
                        PostRow()
                        PostRow()
                        PostRow()
                        PostRow()
                        PostRow()
                        PostRow()
                        PostRow()
                        PostRow()
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
    PostBoardListView()
}
