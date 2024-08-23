//
//  SplashLaunchView.swift
//  ThePackApp
//

import SwiftUI

struct SplashLaunchView: View {
    var body: some View {
        ZStack {
            Color.white // Background color
            
            VStack(spacing: 20) {
                Spacer().frame(height: 170)
                
                // "The Pack" Title Name
                Text("The  Pack")
                    .font(.system(size: 55, weight: .heavy))
                
                // Dog icon
                Image(systemName: "dog.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 225, height: 225)
                    .foregroundColor(Color.blue)
                
                Spacer()
                
                // Swift logo at the bottom
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.blue)
                
                Spacer().frame(height: 130)
            }
            
            // Random paw prints
            GeometryReader { geometry in
                // 3 paws at the top
                pawPrintImage()
                    .position(x: geometry.size.width * 0.175, y: geometry.size.height * 0.16)
                pawPrintImage()
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.115)
                pawPrintImage()
                    .position(x: geometry.size.width * 0.825, y: geometry.size.height * 0.17)
                
                // 2 paws towards top of dog icon
                pawPrintImage()
                    .position(x: geometry.size.width * 0.13, y: geometry.size.height * 0.355)
                pawPrintImage()
                    .position(x: geometry.size.width * 0.87, y: geometry.size.height * 0.365)
                
                // 2 paws towards bottom of dog icon
                pawPrintImage()
                    .position(x: geometry.size.width * 0.13, y: geometry.size.height * 0.555)
                pawPrintImage()
                    .position(x: geometry.size.width * 0.87, y: geometry.size.height * 0.54)
                
                // 3 paws above swift logo
                pawPrintImage()
                    .position(x: geometry.size.width * 0.16, y: geometry.size.height * 0.72)
                pawPrintImage()
                    .position(x: geometry.size.width * 0.49, y: geometry.size.height * 0.66)
                pawPrintImage()
                    .position(x: geometry.size.width * 0.82, y: geometry.size.height * 0.71)
                
                // 3 paws below swift logo
                pawPrintImage()
                    .position(x: geometry.size.width * 0.18, y: geometry.size.height * 0.86)
                pawPrintImage()
                    .position(x: geometry.size.width * 0.51, y: geometry.size.height * 0.92)
                pawPrintImage()
                    .position(x: geometry.size.width * 0.84, y: geometry.size.height * 0.86)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SplashLaunchView()
}

func pawPrintImage() -> some View {
    Image(systemName: "pawprint.fill")
        .resizable()
        .scaledToFit()
        .frame(width: 50, height: 50)
        .foregroundColor(Color.blue.opacity(0.5))
        .rotationEffect(.degrees(12))
}
