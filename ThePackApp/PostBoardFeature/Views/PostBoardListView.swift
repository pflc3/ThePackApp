//
//  PostBoardListView.swift
//  ThePackApp
//

import SwiftUI

struct PostBoardListView: View {
    var body: some View {
        NavigationSplitView {
            ZStack {
                VStack {
                    // PostList Title
                    customTitle(title: "Bark Board", w: 360, h: 65)
                    
                    // List of PostRows
                    List(postArray) { postItem in
                        NavigationLink {
                            PostDetailView(postVar: postItem)
                                .toolbar(.hidden, for: .tabBar)
                        } label: {
                            PostRow(postVar: postItem)
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                .background(blueGradient())
                
                // Post button positioned in the bottom left corner
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            // Placeholder action for now
                        }) {
                            Image(systemName: "plus")
                                .font(.system(size: 24))
                                .padding()
                                .background(Color.blue.opacity(0.9))
                                .foregroundColor(.white)
                                .clipShape(Circle())

                        }
                        .padding(.horizontal, 30)
                    }
                }
            }
        } detail: {
            Text("Select a post detail page")
        }
    }
}

#Preview {
    PostBoardListView()
}


