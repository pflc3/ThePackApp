//
//  SettingsAndProfileView.swift
//  ThePackApp
//
//  Created by Estuardo Lopez Letona on 8/13/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack {
            Text("Profile View!")
            
            Spacer()
            
            navBarSetAndProf()
        }
        .padding()
    }
}
#Preview {
    ProfileView()
}

func navBarSetAndProf() -> some View {
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
        //iconButton(iconName: "house.fill", w: 48, h: 42)
        iconNavLink(dest: HomeView(), iconName: "house.fill", w: 48, h: 42)
        Spacer()
        
        // Dog Walking icon
        iconButton(iconName: "figure.walk")
        Spacer()
        
        // Profile icon
        iconButton(iconName: "person.fill")
        Spacer()
    }
    .padding()
    .background(Color.blue.opacity(0.7))
    .cornerRadius(20)
    .shadow(radius: 10)
}
