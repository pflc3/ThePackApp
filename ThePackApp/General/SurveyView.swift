//
//  SurveyView.swift
//  ThePackApp
//

import SwiftUI

struct SurveyView: View {
    var body: some View {
        // Declare variables
        @State var name: String = ""
        @State var Dogbreed: String = ""
        @State var Experienced: String = ""
        @State var option: String = ""
        @State var Password: String = ""
        
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // Question 1
                Text("1. What is your first/last name?")
                    .font(.headline)
                TextField("Enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Question 2
                Text("2. Choose up to 3 dog breeds? (At least 1)")
                    .font(.headline)
                TextField("Name first dog breed", text: $Dogbreed )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                TextField("Name second dog breed", text: $Dogbreed )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                TextField("Name third dog breed", text: $Dogbreed )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                // Question 3
                Text("3. What's your experience with dog owning?")
                    .font(.headline)
                TextField("Pick a choice", text: $Experienced)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("UserName")
                    .font(.headline)
                TextField("Enter Your Username", text: $option)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Password")
                    .font(.headline)
                TextField("Enter your password", text: $Password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                
                // Submit Button (just for looks)
                Button(action: {}) {
                    Text("Submit")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationTitle("Fetch Me Your Story!")
        }
        
    }
}

#Preview {
    SurveyView()
}
