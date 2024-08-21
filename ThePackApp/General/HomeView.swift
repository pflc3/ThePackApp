//
//  HomeView.swift
//  ThePackApp
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Home Title
                customTitle(title: "Welcome to The Pack", w: 360, h: 65)
                
                Spacer()
                
                // Title for facts bubble
                bubbleTitle(title: "Fur Facts")
                
                // Facts bubble
                bubbleText(options: dogFacts, otherwise: "Dogs are amazing!")
                
                Spacer().frame(height: 30)
                
                // Title for jokes bubble
                bubbleTitle(title: "Puppy Puns")
                
                // Jokes bubble
                bubbleText(options: dogJokes, otherwise: "Dogs are funny!")
                
                Spacer()
            }
            .padding()
            .background(blueGradient())
        }
        .navigationBarBackButtonHidden(true)
    }
    
    // Dog facts array
    let dogFacts: [String] = [
        "Dogs have a sense of time. It's been proven that they know the difference between an hour and five hours.",
        "A dog’s sense of smell is at least 40x better than ours.",
        "Dogs can understand up to 250 words and gestures.",
        "The average dog is as smart as a two-year-old child.",
        "Dogs’ noses are wet to help absorb scent chemicals."
    ]

    // Dog jokes array
    let dogJokes: [String] = [
        "Why did the dog sit in the shade? Because he didn’t want to be a hot dog!",
        "What kind of dog loves indulging in a good bath? A shampoo-dle!",
        "What do you call a dog magician? A labracadabrador!",
        "Why did the dog go to the bank? To make a de-paws-it!",
        "What kind of dog does Dracula have? A bloodhound!"
    ]
}

#Preview {
    HomeView()
}

// Bubble title
func bubbleTitle(title: String) -> some View {
    Text(title)
        .font(.system(size: 30))
        .bold()
        .foregroundColor(.white)
        .frame(width: 200, height: 45)
        .scaledToFit()
        .background(.blue.opacity(0.7))
        .cornerRadius(15)
}

// Bubble text
func bubbleText(options: [String], otherwise: String) -> some View {
    Text(options.randomElement() ?? otherwise)
        .font(.system(size: 24))
        .fontWeight(.medium)
        .foregroundColor(.white)
        .frame(width: 320, height: 120)
        .multilineTextAlignment(.center)
        .padding()
        .background(Color.blue.opacity(0.7))
        .cornerRadius(20)
        .shadow(radius: 25)
}
