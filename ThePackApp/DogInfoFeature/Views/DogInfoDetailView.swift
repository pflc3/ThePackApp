//
//  DogInfoDetailView.swift
//  ThePackApp
//

import SwiftUI

struct DogInfoDetailView: View {
    var body: some View {
        VStack {
            customTitle(title: "Golden Retriever", w: 360, h: 65)
            
            Spacer().frame(height: 40)
            
            Image("goldenPupBody")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 160)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.white.opacity(0.4), lineWidth: 1.3)
                }
                .shadow(radius: 8)
            
            VStack(alignment: .leading, spacing: 15) {
                Group {
                    Text("Life Stage:")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    
                    Divider().background(Color.blue.opacity(0.4))
                    
                    Text("Age:")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("Weight:")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Divider().background(Color.blue.opacity(0.4))
                }
                
                Group {
                    Text("Description:")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    
                    Text("Medical Advice:")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    
                    Text("Food Advice:")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    
                    Text("Things To Watch Out For:")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white.opacity(0.9))
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 5)
            )
            .padding()
            
            Spacer()
        }
        .padding()
        .background(blueGradient())
    }
}

#Preview {
    DogInfoDetailView()
}

