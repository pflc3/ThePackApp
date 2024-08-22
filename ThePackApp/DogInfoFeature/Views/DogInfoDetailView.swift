//
//  DogInfoDetailView.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoDetailView: View {
    var dogInfoVar: DogInfo
    
    var body: some View {
        ScrollView {
            VStack {
                // Breed
                customTitle(title: dogInfoVar.breed, w: 360, h: 65)
                
                Spacer().frame(height: 20)
                
                // Full body pic
                FullDogImage(imageVar: dogInfoVar.bodyImageView)
                
                VStack(alignment: .leading, spacing: 15) {
                    // Life stage and age
                    displayInfoHoriz(label: "Life Stage", text: dogInfoVar.lifeStage)
                    displayInfoHoriz(label: "Age", text: dogInfoVar.age)
                    
                    Divider()
                    
                    // Description
                    displayInfoVert(label: "Description", text: dogInfoVar.description)
                    
                    Divider()
                    
                    // Advice
                    displayInfoList(label: "Medical Advice", t1: dogInfoVar.medAdvice1, t2: dogInfoVar.medAdvice2, t3: dogInfoVar.medAdvice3)
                    displayInfoList(label: "Food Advice", t1: dogInfoVar.foodAdvice1, t2: dogInfoVar.foodAdvice2, t3: dogInfoVar.foodAdvice3)
                    displayInfoList(label: "Watch Out For", t1: dogInfoVar.thingsToWatch1, t2:dogInfoVar.thingsToWatch2, t3: dogInfoVar.thingsToWatch3)
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width * 0.92)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white.opacity(0.9))
                        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 5)
                )
                .padding()
                
                Spacer()
            }
            .padding()
        }
        .background(blueGradient())
    }
}

#Preview("Golden Pup") {
    DogInfoDetailView(dogInfoVar: dogInfoArray[0])
}

#Preview("Golden Adult") {
    DogInfoDetailView(dogInfoVar: dogInfoArray[1])
}

// Display info horizontally with label and text
func displayInfoHoriz(label: String, text: String) -> some View {
    HStack {
        Text(label+":")
            .font(.title3)
            .fontWeight(.bold)
        Text(text)
            .font(.title3)
            .fontWeight(.medium)
    }
}

// Display info vertically with label and text
func displayInfoVert(label: String, text: String) -> some View {
    VStack (alignment: .leading) {
        Text(label)
            .font(.headline)
            .fontWeight(.bold)
        Text(text)
            .font(.headline)
            .fontWeight(.medium)
    }
}

// Display numbered list info with label and texts
func displayInfoList(label: String, t1: String, t2:String, t3: String) -> some View {
    VStack (alignment: .leading) {
        Text(label)
            .font(.headline)
            .fontWeight(.bold)
        Text("1. "+t1)
            .font(.headline)
            .fontWeight(.medium)
        Text("2. "+t2)
            .font(.headline)
            .fontWeight(.medium)
        Text("3. "+t3)
            .font(.headline)
            .fontWeight(.medium)
    }
}
