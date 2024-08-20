//
//  TabBarView.swift
//  ThePackApp
//

import SwiftUI

struct TabBarView: View {
    // Default is Home tab
    @State var selectedTab = 2
    
    var body: some View {
        // Tab bar
        TabView(selection: $selectedTab) {
            // Dog Info tab
            DogInfoListView()
                .tabItem {
                    Image(systemName: "pawprint.fill")
                    Text("Fur Guide")
                }
                .tag(0)
            
            // Post Board tab
            PostBoardListView()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Bark Board")
                }
                .tag(1)
            
            // Home tab
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(2)
            
            // Walkers tab
            WalkerListView()
                .tabItem {
                    Image(systemName: "figure.walk")
                    Text("Woof Walkers")
                }
                .tag(3)
            
            // Profile tab
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(4)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    // Tab Bar Attributes
    init() {
        // Get reference to tab bar
        let tabBarAttribs = UITabBarAppearance()
        
        // Back ground color
        tabBarAttribs.backgroundColor = UIColor(Color.blue.opacity(0.7))
        
        // Icon/text color and size
        tabBarAttribs.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 12)
        ]
        tabBarAttribs.stackedLayoutAppearance.normal.iconColor = UIColor.white
        
        // Selected icon/text color and size
        tabBarAttribs.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.systemYellow,
            .font: UIFont.systemFont(ofSize: 15)
        ]
        tabBarAttribs.stackedLayoutAppearance.selected.iconColor = UIColor.systemYellow
        
        // Applies tab bar attribs to both normal and scrolled states
        UITabBar.appearance().standardAppearance = tabBarAttribs
        UITabBar.appearance().scrollEdgeAppearance = tabBarAttribs
    }
}
        
#Preview {
    TabBarView()
}

// Title function
func customTitle(title: String, w: CGFloat, h: CGFloat, opac: Double = 0.9) -> some View {
    Text(title)
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundColor(.blue.opacity(opac))
        .frame(width: w, height:h)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 40)
}

// Blue gradient function
func blueGradient(opac: Double = 0.8) -> some View {
    LinearGradient(
        gradient: Gradient(colors: [Color.blue.opacity(opac), Color.white.opacity(opac)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    .edgesIgnoringSafeArea(.all)
}
