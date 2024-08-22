//
//  ContentView.swift
//  ThePackApp
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       SurveyView()
    }
}

#Preview {
    ContentView()
}

// Large blue title with white background
func customTitle(title: String, w: CGFloat, h: CGFloat, opac: Double = 0.9) -> some View {
    Text(title)
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundColor(.blue.opacity(opac))
        .frame(width: w, height:h)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 20)
}

// Blue and white gradient
func blueGradient(opac: Double = 0.8) -> some View {
    LinearGradient(
        gradient: Gradient(colors: [Color.blue.opacity(opac), Color.white.opacity(opac)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    .edgesIgnoringSafeArea(.all)
}
