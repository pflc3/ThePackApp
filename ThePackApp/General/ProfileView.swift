//
//  ProfileView.swift
//  ThePackApp
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    // Declare & Initalize variables
    @State private var isEditing: Bool = false
    @State private var username: String = "PackUser"
    @State private var bio: String = "Dog lover and SwiftUI enthusiast."
    @State private var email: String = "thePack@example.com"
    @State private var phoneNumber: String = "(123) 456-7890"
    @State private var password: String = ""
    
    // Holds currenly displayed profile pic
    @State private var profilePic: Image = Image(systemName: "person.crop.circle.fill")
    // Controls display of ImagePicker
    @State private var showingImagePicker: Bool = false
    // Temporarily stores selected image from ImagePicker
    @State private var inputImage: UIImage?
    
    var body: some View {
        VStack(spacing: 20) {
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
            
            Spacer().frame(height: 10)
            
            if isEditing {
                // Editable user, bio, email, number, password
                VStack(spacing: 20) {
                    textBox(label: "Username", info: $username)
                    textBox(label: "Bio", info: $bio)
                    textBox(label: "Email", info: $email, keyboardType: .emailAddress)
                    textBox(label: "Phone", info: $phoneNumber, keyboardType: .phonePad)
                    secureTextBox(label: "Password", info: $password)
                }
                .padding(.horizontal, 20)
            } else {
                // Display user, bio, email, number
                VStack(spacing: 45) {
                    Text(username)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text(bio)
                        .font(.title2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                    infoRow(icon: "envelope.fill", text: email)
                        .font(.title2)
                    infoRow(icon: "phone.fill", text: phoneNumber)
                        .font(.title2)
                }
            }
            
            Spacer()
            
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
            .padding(.top, 30)
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

// Blue gradient function with more blue
func largeBlueGradient(opac: Double = 0.8) -> some View {
    LinearGradient(
        gradient: Gradient(colors: [Color.blue.opacity(1), Color.blue.opacity(opac), Color.white.opacity(opac)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    .edgesIgnoringSafeArea(.all)
}

// Label and text box
func textBox(label: String, info: Binding<String>, keyboardType: UIKeyboardType = .default) -> some View {
    VStack (alignment: .leading) {
        Text(label)
            .fontWeight(.medium)
            .foregroundColor(.white)
        TextField(label, text: info)
            .keyboardType(keyboardType)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

// Label and secure text box
func secureTextBox(label: String, info: Binding<String>) -> some View {
    VStack (alignment: .leading) {
        Text(label)
            .fontWeight(.medium)
            .frame(width: 100, alignment: .leading)
            .foregroundColor(.white)
        SecureField(label, text: info)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

// Display info with icon and text
func infoRow(icon: String, text: String) -> some View {
    HStack {
        Image(systemName: icon)
            .foregroundColor(.white)
        Text(text)
            .foregroundColor(.white)
    }
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

#Preview {
    ProfileView()
}
