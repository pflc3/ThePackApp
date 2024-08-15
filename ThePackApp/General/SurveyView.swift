//
//  SurveyView.swift
//  ThePackApp
//

import SwiftUI

// Used for drop down answers
func dropDownAnswer(title: String, selection: Binding<String>, options: [String]) -> some View {
        Picker(title, selection: selection) {
            ForEach(options, id: \.self) {
                Text($0)
            }
        }
        .pickerStyle(MenuPickerStyle())
        .background(RoundedRectangle(cornerRadius: 5).stroke(Color(UIColor.systemGray4), lineWidth: 0.8))
}

struct SurveyView: View {
    var body: some View {
        // Declare variables
        
        @State var username: String = ""
        @State var password: String = ""
        @State var isSignUp: Bool = true
        
        @State var name: String = ""
        @State var dogBreed1: String = "None"
        @State var dogBreed2: String = "None"
        @State var dogBreed3: String = "None"
        @State var experience: String = "Beginner"
        let dogBreeds: [String] = ["None", "Golden Retriever", "Siberian Husky", "Dachshund"]
        let experienceAry: [String] = ["Beginner", "Intermediate", "Expert"]

        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 25) {
                    // SignIn And SignUp Switch
                    Picker("Sign Up / Sign In", selection: $isSignUp) {
                        Text("Sign Up").tag(true)
                        Text("Sign In").tag(false)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.vertical)
                   
                    // Username
                    Text("Username")
                        .font(.headline)
                    TextField("Enter Your Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    // Password
                    Text("Password")
                        .font(.headline)
                    TextField("Enter your password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    if (isSignUp) {
                        // Question 1: Name
                        Text("1. What is your first/last name?")
                            .font(.headline)
                        TextField("Enter your name", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        // Question 2: Dog Breeds
                        Text("2. Choose up to 3 dog breeds? (At least 1)")
                            .font(.headline)
                        dropDownAnswer(title: "First Dog breed", selection: $dogBreed1, options: dogBreeds)
                        dropDownAnswer(title: "Second Dog breed", selection: $dogBreed1, options: dogBreeds)
                        dropDownAnswer(title: "Third Dog breed", selection: $dogBreed1, options: dogBreeds)
                        
                        // Question 3: Experience
                        Text("3. What's your experience with dog owning?")
                            .font(.headline)
                        dropDownAnswer(title: "Your Experience", selection: $experience, options: experienceAry)
                    }
                    
                    Spacer()
                    
                    // Submit Button
                      NavigationLink(destination: HomeView()) {
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
}

#Preview {
    SurveyView()
}
