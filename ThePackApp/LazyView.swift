//
//  LazyView.swift
//  ThePackApp
//
import SwiftUI

// Generic wrapper for lazy loading views
struct LazyView<Content: View>: View {
    let build: () -> Content
    
    init(_ build: @escaping () -> Content) {
        self.build = build
    }
    
    var body: some View {
        build()
    }
}
