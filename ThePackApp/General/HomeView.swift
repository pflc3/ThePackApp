//
//  HomeView.swift
//  ThePackApp
//

import SwiftUI

struct HomeView: View {
    // Declare and initialize global variable
    @State private var currentFact: String = ""
    @State private var currentJoke: String = ""
    @State private var isFactTurn: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                // Home Title
                customTitle(title: "Welcome to The Pack", w: 360, h: 65)
                
                Spacer()
                
                // Title for facts bubble
                bubbleTitle(title: "Fur Fact")
                
                // Facts bubble
                bubbleText(text: currentFact)
                .transition(.opacity)
                
                Spacer().frame(height: 30)
                
                // Title for jokes bubble
                bubbleTitle(title: "Puppy Pun")
                
                // Jokes bubble
                bubbleText(text: currentJoke)
                .transition(.opacity)
                
                Spacer()
            }
            .padding()
            .background(blueGradient())
            .onAppear {
                // Initialize first fact and joke
                withAnimation {
                    currentFact = dogFacts.randomElement() ?? "Dogs are amazing!"
                    currentJoke = dogJokes.randomElement() ?? "Dogs are funny!"
                }
                // Update fact and joke alternately on timer
                startTimer()
            }
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
    
    // Update the text in the bubbles alternately
    func updateText() {
        withAnimation {
            if(isFactTurn){
                currentFact = dogFacts.randomElement() ?? "Dogs are amazing!"
            } else {
                currentJoke = dogJokes.randomElement() ?? "Dogs are funny!"
            }
        }
    }
    
    // Start a timer to alternate updating text every 10 seconds
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 7.5, repeats: true) { _ in
            updateText()
            isFactTurn.toggle()
        }
    }
}

#Preview {
    HomeView()
}

// Bubble title
func bubbleTitle(title: String) -> some View {
    Text(title)
        .font(.title)
        .fontWeight(.bold)
        .foregroundColor(.blue.opacity(0.9))
        .padding(.vertical, 5)
        .padding(.horizontal, 15)
        .background(Color.white)
            .cornerRadius(15)
}

// Bubble text
func bubbleText(text: String) -> some View {
    Text(text)
        .font(.system(size: 24))
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .frame(width: 320, height: 120)
        .multilineTextAlignment(.center)
        .padding(.vertical, 20)
        .padding(.horizontal, 15)
        .background(Color.blue.opacity(0.7))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: 5)
            )
}
