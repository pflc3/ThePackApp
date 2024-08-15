//
//  SurveyView.swift
//  ThePackApp
//

import SwiftUI

struct SurveyView: View {
    var body: some View {
        // Declare & Initalize variables
        @State var isSignUp: Bool = true
        @State var username: String = ""
        @State var password: String = ""
        @State var name: String = ""
        @State var breeds: [String] = ["None", "None", "None",]
        @State var experience: String = "Beginner"
        let breedOptions: [String] = ["None", "Golden Retriever", "Siberian Husky", "Dachshund"]
        let expOptions: [String] = ["Beginner", "Intermediate", "Expert"]
        let fontSize: CGFloat = 20

        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 25) {
                    // View Title
                    customTitle(title: "Fetch Me Your Story!", w: 360, h: 65, opac: 1)
                    
                    // SignIn And SignUp Switch
                    Picker("Sign Up / Sign In", selection: $isSignUp) {
                        Text("Sign Up").tag(true)
                        Text("Sign In").tag(false)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.vertical)
                   
                    // Username
                    Text("Username")
                        .font(.system(size: fontSize))
                        .fontWeight(.medium)
                    TextField("Enter Your Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    // Password
                    Text("Password")
                        .font(.system(size: fontSize))
                        .fontWeight(.medium)
                    TextField("Enter your password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    if (isSignUp) {
                        // Question 1: Name
                        Text("1. What is your first/last name?")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        TextField("Enter your name", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        // Question 2: Dog Breeds
                        Text("2. Choose up to 3 dog breeds?\n(At least 1)")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        dropDownAnswer(title: "1st Dog breed", selection: $breeds[0], options: breedOptions)
                        dropDownAnswer(title: "2nd Dog breed", selection: $breeds[1], options: breedOptions)
                        dropDownAnswer(title: "3rd Dog breed", selection: $breeds[2], options: breedOptions)
                        
                        // Question 3: Experience
                        Text("3. What is your experience with dog owning?")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        dropDownAnswer(title: "Your Experience", selection: $experience, options: expOptions)
                    }
                    
                    Spacer()
                    
                    // Submit Button
                    NavigationLink(destination: ContentView()) {
                        Text("Submit")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue.opacity(1))
                            .cornerRadius(10)
                    }
                }
                .padding()
                //.navigationTitle("Fetch Me Your Story!")
            }
            .background(blueGradient(opac: 1))
        }
        
    }
}

#Preview {
    SurveyView()
}

// Used for drop down answers
func dropDownAnswer(title: String, selection: Binding<String>, options: [String]) -> some View {
        Picker(title, selection: selection) {
            ForEach(options, id: \.self) {
                Text($0)
            }
        }
        .pickerStyle(MenuPickerStyle())
        .background(RoundedRectangle(cornerRadius: 5)
            .stroke(Color(UIColor.systemGray4),lineWidth: 0.8)
            .fill(Color.white)
        )
}
