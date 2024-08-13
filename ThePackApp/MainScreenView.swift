//
//  MainScreenView.swift
//  ThePackApp
//
//  Created by Gcode on 8/12/24.
//
import SwiftUI

struct MainScreenView: View {
    var body: some View {
        
        // Example dog facts array
        let dogFacts = [
            "Dogs have a sense of time. It's been proven that they know the difference between an hour and five hours.",
            "A dog’s sense of smell is at least 40x better than ours.",
            "Dogs can understand up to 250 words and gestures.",
            "The average dog is as smart as a two-year-old child.",
            "Dogs’ noses are wet to help absorb scent chemicals."
        ]
        
        ZStack {
            // Background color with subtle gradient
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.white.opacity(0.8)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Title text with improved styling
                Text("Welcome to The Pack")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .cornerRadius(10)
                    .shadow(radius: 10)
                
                Spacer() // Pushes bubble down

                // Dog fact speech bubble
                // Title HERE
                HStack(alignment: .center) {
                    Image(systemName: "bubble.left.fill")
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(20)
                        .shadow(radius: 5)
                    
                    Text(dogFacts.randomElement() ?? "Dogs are amazing!")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(20)
                        .shadow(radius: 5)
                }
                .padding()

                Spacer() // Pushes bubble up
                
                // Row of icons at the bottom
                HStack {
                    Spacer()
                    // Dog icon (using a paw print symbol as a placeholder)
                    Image(systemName: "pawprint.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                                       
                    Spacer()
                    // Message icon
                   Image(systemName: "message.fill")
                       .resizable()
                       .scaledToFit()
                       .frame(width: 40, height: 40)
                       .foregroundColor(.white)
                    
                   
                    Spacer()
                    // Home icon
                    Image(systemName: "house.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                   
                    
                    Spacer()
                    
                    // Leash icon (using "link" as a placeholder)
                    Image(systemName: "link")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    // Profile icon
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding()
                .background(Color.blue.opacity(0.7))
                .cornerRadius(20)
                .shadow(radius: 10)
            }
            .padding()
        }
    }
}

#Preview {
    MainScreenView()
}
