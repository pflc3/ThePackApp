//
//  ContentView.swift
//  ThePackApp
//
import SwiftUI

// App screen states
enum AppScreen {
    case splash
    case survey
    case main
}

struct ContentView: View {
    // Track which screen to show
    @State private var currentScreen: AppScreen = .splash
    
    var body: some View {
        // Content based on current screen
        Group {
            if currentScreen == .splash {
                SplashLaunchView()
            } else if currentScreen == .survey {
                // Use the separate SurveyView with a callback for submission
                SurveyView(onSubmit: {
                    withAnimation {
                        currentScreen = .main
                    }
                })
            } else {
                TabBarView()
            }
        }
        .onAppear {
            // Transition from splash to survey after 2 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    currentScreen = .survey
                }
            }
        }
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
