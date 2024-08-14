//
//  MainScreenView.swift
//  ThePackApp
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        // Dog facts array
        let dogFacts: [String] = [
            "Dogs have a sense of time. It's been proven that they know the difference between an hour and five hours.",
            "A dog’s sense of smell is at least 40x better than ours.",
            "Dogs can understand up to 250 words and gestures.",
            "The average dog is as smart as a two-year-old child.",
            "Dogs’ noses are wet to help absorb scent chemicals."
        ]
        //Dog jokes Array
        let dogJokes: [String] = [
            "Why did the dog sit in the shade? Because he didn’t want to be a hot dog! ",
            "What kind of dog loves indulging in a good bath? A shampoo-dle!",
            "What do you call a dog magician? A labracadabrador!",
            "Why did the dog go to the bank? To make a de-paws-it!",
            "What kind of dog does Dracula have? A bloodhound!"
        ]
        
        ZStack {
            // Background color with subtle gradient
            // ZStack used to put background behind VStack
            LinearGradient (
                gradient: Gradient (colors: [Color.blue.opacity(0.8), Color.white.opacity(0.8)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Title of mainscreen
                Text("Welcome to The Pack")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue.opacity(0.9))
                    .frame(width: 360, height:65)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 40)
                
                Spacer()
                
                // Title for facts
                Text("Furr Facts")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 200, height:45)
                    .scaledToFit()
                    .background(.blue.opacity(0.7))
                    .cornerRadius(15)
                // Facts bubble
                Text(dogFacts.randomElement() ?? "Dogs are amazing!")
                    .font(.system(size: 24))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: 320, height:120)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .cornerRadius(20)
                    .shadow(radius: 25)
                
                Spacer().frame(height: 30)
                
                // Title for jokes
                Text("Puppy Puns")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 200, height:45)
                    .scaledToFit()
                    .background(.blue.opacity(0.7))
                    .cornerRadius(15)
                // Jokes bubble
                Text(dogJokes.randomElement() ?? "Dogs are funny!")
                    .font(.system(size: 24))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: 320, height:120)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .cornerRadius(20)
                    .shadow(radius: 25)

                Spacer()
                
                // Navigation bar (no functionality rn)
                HStack {
                    Spacer()
                    
                    // Dog icon
                    Image(systemName: "pawprint.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                    Spacer()
                    
                    // Message Board icon
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
                        .frame(width: 48, height: 42)
                        .foregroundColor(.white)
                    Spacer()
                    
                    // Dog Walking icon
                    Image(systemName: "figure.walk")
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
