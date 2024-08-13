//
//  DogRow.swift
//  ThePackApp
//
//  Created by Gcode on 8/13/24.
//

import SwiftUI

struct DogRow: View {
    var body: some View {
        HStack {
            Image(systemName: "pawprint.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            Text("Dog Name")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            Spacer()

            Text("Description")
                .font(.subheadline)
                .foregroundColor(.white)
                .padding(.trailing, 10)
        }
        .padding()
        .background(Color.blue)
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

