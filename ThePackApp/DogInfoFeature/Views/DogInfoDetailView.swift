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
                
                Spacer().frame(height: 20)
                
                VStack(alignment: .leading, spacing: 15) {
                    // Life stage and age
                    displayInfoHoriz(label: "Life Stage", text: dogInfoVar.lifeStage)
                    displayInfoHoriz(label: "Age", text: dogInfoVar.age)
                    
                    Divider()
                    
                    // Description
                    displayInfoVert(label: "Description", text: dogInfoVar.description)
                }
                .padding()
                .background(customRectangle())
                
                Spacer().frame(height: 20)
                
                VStack(alignment: .leading, spacing: 15) {
                    // Advice
                    displayInfoList(label: "Medical Advice", icon: "bandage.fill", t1: dogInfoVar.medAdvice1, t2: dogInfoVar.medAdvice2, t3: dogInfoVar.medAdvice3)
                    displayInfoList(label: "Food Advice", icon: "fork.knife", t1: dogInfoVar.foodAdvice1, t2: dogInfoVar.foodAdvice2, t3: dogInfoVar.foodAdvice3)
                    displayInfoList(label: "Watch Out For", icon: "exclamationmark.triangle.fill" ,t1: dogInfoVar.thingsToWatch1, t2:dogInfoVar.thingsToWatch2, t3: dogInfoVar.thingsToWatch3)
                }
                .padding()
                .background(customRectangle())
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
            .font(.system(size: 19))
            .fontWeight(.bold)
            .foregroundColor(.blue.opacity(0.9))
        Text(text)
            .font(.system(size: 19))
            .fontWeight(.medium)
    }
}

// Display info vertically with label and text
func displayInfoVert(label: String, text: String) -> some View {
    VStack (alignment: .leading) {
        Text(label)
            .font(.system(size: 19))
            .fontWeight(.bold)
            .foregroundColor(.blue.opacity(0.9))
        
        Spacer().frame(height: 5)
        
        Text(text)
            .font(.body)
            .fontWeight(.medium)
    }
}

// Display numbered list info with label and texts
func displayInfoList(label: String, icon: String, t1: String, t2:String, t3: String) -> some View {
    VStack (alignment: .leading, spacing: 5) {
        HStack {
            Text(label)
                .font(.system(size: 19))
                .fontWeight(.bold)
                .foregroundColor(.blue.opacity(0.9))
            Image(systemName: icon)
                .font(.system(size: 18))
                .foregroundColor(.blue.opacity(0.8))
        }
        Text("1. "+t1)
            .font(.body)
            .fontWeight(.medium)
        Text("2. "+t2)
            .font(.body)
            .fontWeight(.medium)
        Text("3. "+t3)
            .font(.body)
            .fontWeight(.medium)
    }
}
