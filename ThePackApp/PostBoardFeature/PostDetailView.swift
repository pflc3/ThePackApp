//
//  PostDetailView.swift
//  ThePackApp
//

import SwiftUI

struct PostDetailView: View {
    var body: some View {
        VStack {
            customTitle(title: "Title", w: 360, h: 65)
            
            Spacer()
        }
        .padding()
        .background(blueGradient())
    }
}

#Preview {
    PostDetailView()
}
