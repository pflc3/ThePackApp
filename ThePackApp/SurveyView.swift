//
//  SurveyView.swift
//  ThePackApp
//
//  Created by Gcode on 8/12/24.
//

/*
        Text("Name (First)")
        Text("Name (Last)")
        Text("Choose up to 3 dog breeds")
        Text("Experienced with dog owning")
        Text("beginner, Intermediate, experienced")
        Text("sign in/sign up")
        Text("username")
        Text("password")
        Text("*up to 8 letters")
*/

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
            VStack(alignment: .leading, spacing: 30) {
                // Question 1
                Text("1. What is your First/Last name?")
                    .font(.headline)
                TextField("Enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Question 2
                Text("2. Choose Up To 3 Dog Breeds")
                    .font(.headline)
                TextField("Name 3 breeds", text: $Dogbreed )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                // Question 3
                Text("3. What is your Experience With Dog Owning?")
                    .font(.headline)
                TextField(" pick a choice", text: $Experienced)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("4.UserName")
                    .font(.headline)
                TextField("Enter Your Username", text: $option)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("5.Password?")
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
