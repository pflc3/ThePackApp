//
//  WalkerDetailView.swift
//  ThePackApp
//

import SwiftUI

struct WalkerDetailView: View {
    var walkerVar: Walker
    
    var body: some View {
        ScrollView {
            VStack {
                customTitle(title: walkerVar.name, w: 360, h: 65)
                
                Spacer().frame(height:40)
                
                HeadWalkerImage(walkerVar: walkerVar)
                
                Spacer()
                
                VStack(spacing: 15){
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.bold)
                        Text(walkerVar.bio)
                    }
                    VStack(alignment: .leading) {
                        Text("Descrition")
                            .fontWeight(.bold)
                        Text(walkerVar.description)
                    }
                        
                    Divider()
                    
                    HStack {
                        Text("Location:")
                            .fontWeight(.semibold)
                        Text(walkerVar.location)
                    }
                    HStack {
                        Text("Price:")
                            .fontWeight(.semibold)
                        Text(walkerVar.price)
                        Text("Rating:")
                            .fontWeight(.semibold)
                        Text(walkerVar.rating)
                    }
                    HStack {
                        Text("Email:")
                            .fontWeight(.semibold)
                        Text(walkerVar.email)
                    }
                    HStack {
                        Text("Phone Number:")
                            .fontWeight(.semibold)
                        Text(walkerVar.phoneNumber)
                    }
                }
                
                Spacer()
            }
            .padding()
        }
        .background(blueGradient())
    }
}

#Preview("Emmanuel") {
    WalkerDetailView(walkerVar: walkerArray[0])
}

#Preview("Wanda") {
    WalkerDetailView(walkerVar: walkerArray[1])
}
