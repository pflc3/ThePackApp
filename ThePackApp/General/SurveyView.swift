//
//  SurveyView.swift
//  ThePackApp
//

import SwiftUI

struct SurveyView: View {
    var body: some View {
        // Declare variables
        @State var name: String = ""
        @State var dogBreed1: String = ""
        @State var dogBreed2: String = ""
        @State var dogBreed3: String = ""
        @State var experience: String = ""
        @State var username: String = ""
        @State var password: String = ""
        
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // Question 1: Name
                Text("1. What is your first/last name?")
                    .font(.headline)
                TextField("Enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Question 2: Dog Breeds
                Text("2. Choose up to 3 dog breeds? (At least 1)")
                    .font(.headline)
                TextField("Name first dog breed", text: $dogBreed1 )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Name second dog breed", text: $dogBreed2 )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Name third dog breed", text: $dogBreed3 )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Question 3: Experience
                Text("3. What's your experience with dog owning?")
                    .font(.headline)
                TextField("Pick a choice", text: $experience)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // UserName
                Text("UserName")
                    .font(.headline)
                TextField("Enter Your Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Password
                Text("Password")
                    .font(.headline)
                TextField("Enter your password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                
                // Submit Button (no functionality rn)
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
