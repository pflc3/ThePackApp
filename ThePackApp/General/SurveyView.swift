//
//  SurveyView.swift
//  ThePackApp
//

import SwiftUI

struct SurveyView: View {
    // Declare & Initalize variables
    @State private var isSignUp: Bool = true
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var breedSelecs: [String] = ["None", "None", "None"]
    @State private var expSelection: String = "Beginner"
    let breedOptions: [String] = ["None", "Golden Retriever", "Siberian Husky", "Dachshund", "German Shepard", "Bulldog", "Poodle", "Rottweiler", "Beagle", "American Pit Bull Terrier"]
    let expOptions: [String] = ["Beginner", "Intermediate", "Expert"]
    let fontSize: CGFloat = 20
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 25) {
                    // View Title
                    Text("Fetch Me Your Story!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.blue.opacity(0.9))
                        .cornerRadius(10)
                    
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
                        // Question 1: First Name
                        Text("1. What is your first name?")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        TextField("Enter your name", text: $firstName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        // Question 2: Last Name
                        Text("2. What is your last name?")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        TextField("Enter your name", text: $lastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        // Question 3: Dog Breeds
                        Text("3. Choose up to 3 dog breeds?\n(At least 1)")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        dropDownAnswer(title: "1st Dog breed", selection: $breedSelecs[0], options: breedOptions)
                        dropDownAnswer(title: "2nd Dog breed", selection: $breedSelecs[1], options: breedOptions)
                        dropDownAnswer(title: "3rd Dog breed", selection: $breedSelecs[2], options: breedOptions)
                        
                        // Question 4: Experience
                        Text("4. What is your experience with dog owning?")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        dropDownAnswer(title: "Your Experience", selection: $expSelection, options: expOptions)
                    }
                    
                    Spacer()
                    
                    // Submit Button
                    NavigationLink(destination: TabBarView()) {
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
            }
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
