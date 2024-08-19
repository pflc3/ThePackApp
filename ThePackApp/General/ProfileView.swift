//
//  SettingsAndProfileView.swift
//  ThePackApp
//
//  Created by Estuardo Lopez Letona on 8/13/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var username: String = "PackUser"
    @State private var bio: String = "SwiftUI enthusiast and dog lover."
    @State private var email: String = "pupdevs@example.com"
    @State private var phoneNumber: String = "(123) 456-7890"
    @State private var password: String = "password "
    @State private var isEditing: Bool = false
    @State private var selectedImage: Image? = Image(systemName: "person.crop.circle.fill")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Profile Image
                selectedImage?
                    .resizable()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.white)
                    .padding(.top, 40)
                
                if isEditing {
                    // Editable Username
                    TextField("Username", text: $username)
                        .font(.title)
                        .foregroundColor(.black)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 40)
                    // Editable Bio
                    TextField("Bio", text: $bio)
                        .font(.body)
                        .foregroundColor(.black)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 40)
                    // Editable Email
                    TextField("Email", text: $email)
                        .font(.body)
                        .foregroundColor(.black)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 40)
                    // Editable Phone Number
                    TextField("Phone Number", text: $phoneNumber)
                        .font(.body)
                        .foregroundColor(.black)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 40)
                    TextField("Change Password", text: $password)
                        .font(.body)
                        .foregroundColor(.black)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 40)
                } else {
                    // Display Username
                    Text("Welcome, \(username)")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    // Display Bio
                    Text(bio)
                        .font(.body)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                    // Display Email
                    HStack {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.white)
                        Text(email)
                            .font(.body)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 40)
                    // Display Phone Number
                    HStack {
                        Image(systemName: "phone.fill")
                            .foregroundColor(.white)
                        Text(phoneNumber)
                            .font(.body)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 40)
                    
                    
                }
                
                Spacer()
                
                // Edit or Save Button
                Button(action: {isEditing.toggle()}) {
                    Text(isEditing ? "Save" : "Edit Profile")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 40)
                }
                
                Spacer()
            }
           
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(blueGradient())
    }
    
}

#Preview {
    ProfileView()
}
