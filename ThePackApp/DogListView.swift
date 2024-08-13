//
//  DogListView.swift
//  ThePackApp
//
//  Created by Gcode on 8/13/24.
//

import SwiftUI

struct DogListView: View {
    var body: some View {
        VStack {
            Text("Your Dogs!")
            DogRow()
            DogRow()
            DogRow()
            
        }
        Spacer()
    }
}

#Preview {
    DogListView()
}
