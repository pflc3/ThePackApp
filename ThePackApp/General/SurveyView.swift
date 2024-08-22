//
//  SurveyView.swift
//  ThePackApp
//

import SwiftUI

// Declare and initialize global variable
var globalUsername: String = ""
var globalBreedSelecs: [String] = ["None", "None", "None"]
var globalPassword: String = ""
var globalFirstName: String = ""
var globalLastName: String = ""
var globalExpSelec: String = "Beginner"

let breedOptions: [String] = ["None", "Golden Retriever", "Siberian Husky", "Dachshund", "German Shepard", "Bulldog", "Poodle", "Rottweiler", "Beagle", "American Pit Bull Terrier"]
let expOptions: [String] = ["Beginner", "Intermediate", "Expert"]

struct SurveyView: View {
    // Declare and initialize variables
    @State private var isSignUp: Bool = true
    @State private var username: String = globalUsername
    @State private var password: String = globalPassword
    @State private var firstName: String = globalFirstName
    @State private var lastName: String = globalLastName
    @State private var breedSelecs: [String] = globalBreedSelecs
    @State private var expSelection: String = globalExpSelec
    let fontSize: CGFloat = 20
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 25) {
                    // Survery Title
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
                        .onChange(of: username) { oldVal, newVal in
                            globalUsername = newVal
                        }
                    
                    // Password
                    Text("Password")
                        .font(.system(size: fontSize))
                        .fontWeight(.medium)
                    SecureField("Enter your password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .onChange(of: password) { oldVal, newVal in
                            globalPassword = newVal
                        }
                    
                    if (isSignUp) {
                        // Question 1: First Name
                        Text("1. What is your first name?")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        TextField("Enter your name", text: $firstName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .onChange(of: firstName) { oldVal, newVal in
                                globalFirstName = newVal
                            }
                        
                        // Question 2: Last Name
                        Text("2. What is your last name?")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        TextField("Enter your name", text: $lastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .onChange(of: lastName) { oldVal, newVal in
                                globalLastName = newVal
                            }
                        
                        // Question 3: Dog Breeds
                        Text("3. Choose up to 3 dog breeds?\n(At least 1)")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        
                        // 1st Dog Breed
                        Picker("1st Dog breed", selection: $breedSelecs[0]) {
                            ForEach(breedOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .background(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(UIColor.systemGray4),lineWidth: 0.8)
                            .fill(Color.white)
                        )
                        .onChange(of: breedSelecs[0]) { oldVal, newVal in
                            globalBreedSelecs[0] = newVal
                        }
                        
                        //2nd dog breed
                        Picker("2nd Dog breed", selection: $breedSelecs[1]) {
                            ForEach(breedOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .background(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(UIColor.systemGray4),lineWidth: 0.8)
                            .fill(Color.white)
                        )
                        .onChange(of: breedSelecs[1]) { oldVal, newVal in
                            globalBreedSelecs[1] = newVal
                        }
                        
                        //3rd dog breed
                        Picker("3rd Dog breed", selection: $breedSelecs[2]) {
                            ForEach(breedOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .background(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(UIColor.systemGray4),lineWidth: 0.8)
                            .fill(Color.white)
                        )
                        .onChange(of: breedSelecs[2]) { oldVal, newVal in
                            globalBreedSelecs[2] = newVal
                        }
                        
                        // Question 4: Experience
                        Text("4. What is your experience with dog owning?")
                            .font(.system(size: fontSize))
                            .fontWeight(.medium)
                        
                        // Experience
                        Picker("Your experience", selection: $expSelection) {
                            ForEach(expOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .background(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(UIColor.systemGray4),lineWidth: 0.8)
                            .fill(Color.white)
                        )
                        .onChange(of: expSelection) { oldVal, newVal in
                            globalExpSelec = newVal
                        }

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
