//
//  DogRow.swift
//  ThePackApp
//
//  Created by Gcode on 8/13/24.
//

import SwiftUI

struct DogRow: View {
    var body: some View {
        HStack{
            Text("Image")
            Spacer() // Adds space between the Texts
            Text("Description")
        }
        .padding() // Adds padding inside the border
            .background(Color.white) // Background color for the row
            .cornerRadius(10) // Rounded corners
            .shadow(radius: 5) // Optional: Adds shadow for a subtle effect
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1) // Border color and width
            )
    }
}

#Preview {
    DogRow()
}
