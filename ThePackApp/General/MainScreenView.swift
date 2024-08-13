//
//  MainScreenView.swift
//  ThePackApp
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        
        // Dog facts array
        let dogFacts = [
            "Dogs have a sense of time. It's been proven that they know the difference between an hour and five hours.",
            "A dog’s sense of smell is at least 40x better than ours.",
            "Dogs can understand up to 250 words and gestures.",
            "The average dog is as smart as a two-year-old child.",
            "Dogs’ noses are wet to help absorb scent chemicals."
        ]
        //Dog Joke Array
        let dogJokes = [
        "Why did the dog sit in the shade? Because he didn’t want to be a hot dog! ", "What kind of dog loves indulging in a good bath? A shampoo-dle!", "What do you call a dog magician? A labracadabrador!", "Why did the dog go to the bank? To make a de-paws-it!", "What kind of dog does Dracula have? A bloodhound!" ]
        
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
                    .foregroundColor(.blue.opacity(0.9))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 40)
                
                Spacer()
                // Pushes bubble down

                //First Title For The Jokes
                Text("  Howl-arious Jokes  ")
                    . scaledToFit()
                    .frame(width: 270, height:40)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .background(.blue.opacity(0.7))
                    .cornerRadius(15)
                
                Text(dogJokes.randomElement() ?? "Dogs are funny!")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .cornerRadius(20)
                    .shadow(radius: 25)
                
                // Title For The Fun Facts
                Text(" Fur Facts ")
                    .scaledToFit()
                    .frame(width: 270, height:40)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .background(.blue.opacity(0.7))
                    .cornerRadius(15)
                    .shadow(radius: 25)
                
                // Dog fact speech bubble
                HStack(alignment: .center) {
                    Text(dogFacts.randomElement() ?? "Dogs are amazing!")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(20)
                        .shadow(radius: 25)
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
                    Image(systemName: "minus.circle")
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
