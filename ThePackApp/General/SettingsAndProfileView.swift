//
//  SettingsAndProfileView.swift
//  ThePackApp
//
//  Created by Estuardo Lopez Letona on 8/13/24.
//

import SwiftUI

struct SettingsAndProfileView: View {
    var body: some View {
        
        VStack {
            Text("Settings And Profile!")
            
            Spacer()
            
            // Navigation bar
            HStack {
                Spacer()
                
                // Dog icon
                NavigationLink(destination: DogInfoListView()) {
                    Image(systemName: "pawprint.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                }
                Spacer()
                
                // Message Board icon
                NavigationLink(destination: PostBoardListView()) {
                    Image(systemName: "message.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                }
                Spacer()
                
                // Home icon
                NavigationLink(destination: HomeView()) {
                    Image(systemName: "house.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 48, height: 42)
                        .foregroundColor(.white)
                }
                Spacer()
                
                // Dog Walking icon
                Button(action: {}) {
                    Image(systemName: "figure.walk")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                }
                Spacer()
                
                // Profile icon
                Button(action: {}) {
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                }
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
#Preview {
    SettingsAndProfileView()
}
