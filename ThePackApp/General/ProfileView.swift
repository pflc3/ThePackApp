//
//  ProfileView.swift
//  ThePackApp
//

import SwiftUI
import PhotosUI

// Declare and initialize global variable
var globalUsername: String = "janedoe.is.cool"

struct ProfileView: View {
    // Declare and initialize variables
    @State private var isEditing: Bool = false
    @State private var firstName: String = "Jane"
    @State private var lastName: String = "Doe"
    @State private var email: String = "the.pack@example.com"
    @State private var phoneNumber: String = "(123) 456-7890"
    @State private var username: String = globalUsername
    @State private var password: String = "Pass123!"
    
    @State private var breedSelecs: [String] = ["Golden Retriever", "Siberian Husky", "Dachshund"]
    let breedOptions: [String] = ["None", "Golden Retriever", "Siberian Husky", "Dachshund", "German Shepard", "Bulldog", "Poodle", "Rottweiler", "Beagle", "American Pit Bull Terrier"]
    
    // Holds currenly displayed profile pic
    @State private var profilePic: Image = Image(systemName: "person.crop.circle.fill")
    // Controls display of ImagePicker
    @State private var showingImagePicker: Bool = false
    // Temporarily stores selected image from ImagePicker
    @State private var inputImage: UIImage?
    
    var body: some View {
        ScrollView {
            VStack {
                // Profile picture
                profilePic
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .padding(.top, 40)
                    .onTapGesture {
                        if isEditing {
                            showingImagePicker = true
                        }
                    }
                
                Spacer().frame(height: 40)
                
                if isEditing {
                    // Editable firstNm, lastNm, dog breeds, email, number, user, password
                    VStack(alignment: .leading, spacing: 20) {
                        textAnswer(label: "First Name", info: $firstName)
                        textAnswer(label: "Last Name", info: $lastName)
                        
                        Text("Dog Breeds")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        dropDownAnswer(title: "1st Dog breed", selection: $breedSelecs[0], options: breedOptions)
                        dropDownAnswer(title: "2nd Dog breed", selection: $breedSelecs[1], options: breedOptions)
                        dropDownAnswer(title: "3rd Dog breed", selection: $breedSelecs[2], options: breedOptions)
                        
                        textAnswer(label: "Email", info: $email, keyboardType: .emailAddress)
                        textAnswer(label: "Phone", info: $phoneNumber, keyboardType: .phonePad)
                        VStack(alignment: .leading) {
                            Text("Username")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            TextField("Username", text: $username)
                                .keyboardType(.default)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .onChange(of: username) { oldVal, newVal in
                                    globalUsername = newVal
                                }
                        }
                        secureTextAnswer(label: "Password", info: $password)
                    }
                    .padding(.horizontal, 20)
                } else {
                    // Display firstNm, dog breeds, email, number, user
                    VStack(spacing: 35) {
                        Text("Howl-o "+firstName+"!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        VStack(spacing: 15) {
                            displayInfo(icon: "pawprint.fill", text: breedSelecs[0])
                            displayInfo(icon: "pawprint.fill", text: breedSelecs[1])
                            displayInfo(icon: "pawprint.fill", text: breedSelecs[2])
                        }
                        displayInfo(icon: "envelope.fill", text: email)
                        displayInfo(icon: "phone.fill", text: phoneNumber)
                        displayInfo(icon: "person.fill", text: username)
                    }
                }
                
                Spacer().frame(height: 40)
                
                // Button
                Button(action: {isEditing.toggle()}) {
                    // Switch from save and edit profile
                    Text(isEditing ? "Save" : "Edit Profile")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal, 40)
                }
                
                if(isEditing){
                    Spacer().frame(height: 40)
                }
            }
        }
        .background(largeBlueGradient())
        // Displays ImagePicker as sheet when showingImagePicker is true
        // loadImage() is called once the sheet is dismissed
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: $inputImage)
        }
    }
    // Checks if an image was selected
    // If so, it updates profileImage with the selected image
    func loadImage() {
        guard let selectedImage = inputImage else {
            return // No selectedImage so exit function
        }
        profilePic = Image(uiImage: selectedImage)
    }
}

#Preview {
    ProfileView()
}

// Blue and white gradient with more blue
func largeBlueGradient(opac: Double = 0.8) -> some View {
    LinearGradient(
        gradient: Gradient(colors: [Color.blue.opacity(1), Color.blue.opacity(opac), Color.white.opacity(opac)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    .edgesIgnoringSafeArea(.all)
}

// Label and text box to give answer
func textAnswer(label: String, info: Binding<String>, keyboardType: UIKeyboardType = .default) -> some View {
    VStack(alignment: .leading) {
        Text(label)
            .fontWeight(.medium)
            .foregroundColor(.white)
        TextField(label, text: info)
            .keyboardType(keyboardType)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

// Label and secure text box to give answer
func secureTextAnswer(label: String, info: Binding<String>) -> some View {
    VStack(alignment: .leading) {
        Text(label)
            .fontWeight(.medium)
            .frame(width: 100, alignment: .leading)
            .foregroundColor(.white)
        SecureField(label, text: info)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

// Display info with icon and text
func displayInfo(icon: String, text: String) -> some View {
    HStack {
        Image(systemName: icon)
            .foregroundColor(.white)
        Text(text)
            .foregroundColor(.white)
    }
    .font(.title2)
}

// ImagePicker struct, a custom wrapper around the UIImagePickerController
// UIIPC is a UIKit component used to select images from the user's library or take a new photo
struct ImagePicker: UIViewControllerRepresentable {
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker

        init(parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = uiImage
            }

            parent.presentationMode.wrappedValue.dismiss()
        }
    }

    @Environment(\.presentationMode) var presentationMode
    @Binding var image: UIImage?

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {}
}
