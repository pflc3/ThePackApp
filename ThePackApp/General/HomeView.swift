//
//  HomeView.swift
//  ThePackApp
//

import SwiftUI

struct HomeView: View {
    var body: some View {
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
        
        NavigationView {
            VStack {
                // Title of homeView
                Text("Welcome to The Pack")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue.opacity(0.9))
                    .frame(width: 360, height: 65)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 40)
                
                Spacer()
                
                // Title for facts bubble
                bubbleTitle(title: "Furr Facts")
                
                // Facts bubble
                bubbleText(options: dogFacts, otherwise: "Dogs are amazing!")
                
                Spacer().frame(height: 30)
                
                // Title for jokes bubble
                bubbleTitle(title: "Puppy Puns")
                
                // Jokes bubble
                bubbleText(options: dogJokes, otherwise: "Dogs are funny!")
                
                Spacer()
                
                // Navigation bar
                HStack {
                    Spacer()
                    
                    // Dog icon
                    iconNavLink(dest: DogInfoListView(), iconName: "pawprint.fill")
                    Spacer()
                    
                    // Message Board icon
                    iconNavLink(dest: PostBoardListView(), iconName: "message.fill")
                    Spacer()
                    
                    // Home icon
                    iconButton(iconName: "house.fill", w: 48, h: 42)
                    Spacer()
                    
                    // Dog Walking icon
                    iconButton(iconName: "figure.walk", w: 40, h: 40)
                    Spacer()
                    
                    // Profile icon
                    iconNavLink(dest: SettingsAndProfileView(), iconName: "person.fill")
                    Spacer()
                }
                .padding()
                .background(Color.blue.opacity(0.7))
                .cornerRadius(20)
                .shadow(radius: 10)
            }
            .padding()
            .background(LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.white.opacity(0.8)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
        }
    }
}

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

func iconNavLink(dest: some View, iconName: String) -> some View {
    NavigationLink(destination: dest) {
        Image(systemName: iconName)
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
            .foregroundColor(.white)
    }
}

func iconButton(iconName: String, w: CGFloat, h: CGFloat) -> some View {
    Button(action: {}) {
        Image(systemName: iconName)
            .resizable()
            .scaledToFit()
            .frame(width: w, height: h)
            .foregroundColor(.white)
    }
}

#Preview {
    HomeView()
}
