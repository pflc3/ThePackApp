//
//  ProfileView.swift
//  ThePackApp
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    // Declare and initialize variables
    @State private var isEditing: Bool = false
    @State private var firstName: String = globalFirstName
    @State private var lastName: String = globalLastName
    @State private var email: String = "the.pack@example.com"
    @State private var phoneNumber: String = "(123) 456-7890"
    @State private var username: String = globalUsername
    @State private var password: String = globalPassword
    @State private var expSelec: String = globalExpSelec
    @State private var breedSelecs: [String] = globalBreedSelecs
    
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
                    .overlay(Circle().stroke(Color.white.opacity(0.8), lineWidth: 4))
                    .shadow(radius: 10)
                    .padding(.top, 40)
                    .onTapGesture {
                        if isEditing {
                            showingImagePicker = true
                        }
                    }
                
                Spacer().frame(height: 40)
                
                if isEditing {
                    // Editable info
                    VStack(alignment: .leading, spacing: 20) {
                        // First Name
                        VStack(alignment: .leading) {
                            Text("First Name")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            TextField("First Name", text: $firstName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .onChange(of: firstName) { oldVal, newVal in
                                    globalFirstName = newVal
                                }
                        }
                        
                        // Last name
                        VStack(alignment: .leading) {
                            Text("Last Name")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            TextField("Last Name", text: $lastName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .onChange(of: lastName) { oldVal, newVal in
                                    globalLastName = newVal
                                }
                        }
                        
                        // Dog Breeds
                        Text("Dog Breeds")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        
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
                        
                        // Experience
                        Text("Experience")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        Picker("Experience", selection: $expSelec) {
                            ForEach(expOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .background(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(UIColor.systemGray4),lineWidth: 0.8)
                            .fill(Color.white)
                        )
                        .onChange(of: expSelec) { oldVal, newVal in
                            globalExpSelec = newVal
                        }
                        
                        // Phone
                        textAnswer(label: "Phone Number", info: $phoneNumber, keyboardType: .phonePad)
                        
                        // Email
                        textAnswer(label: "Email", info: $email, keyboardType: .emailAddress)
                        
                        // Username
                        VStack(alignment: .leading) {
                            Text("Username")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            TextField("Username", text: $username)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .onChange(of: username) { oldVal, newVal in
                                    globalUsername = newVal
                                }
                        }
                        
                        // Password
                        VStack(alignment: .leading) {
                            Text("Password")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            SecureField("Password", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .onChange(of: password) { oldVal, newVal in
                                    globalPassword = newVal
                                }
                        }
                    }
                    .padding(.horizontal, 20)
                } else {
                    // Display firstNm, dog breeds, user, exp, number, email
                    VStack(spacing: 30) {
                        Text("Howl-o "+firstName+"!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        VStack(spacing: 15) {
                            displayInfo(icon: "pawprint.fill", text: breedSelecs[0])
                            displayInfo(icon: "pawprint.fill", text: breedSelecs[1])
                            displayInfo(icon: "pawprint.fill", text: breedSelecs[2])
                        }
                        displayInfo(icon: "person.fill", text: username)
                        HStack {
                            Image("Bone")
                                .resizable()
                                .frame(width: 20, height:20)
                            Text(expSelec)
                                .foregroundColor(.white)
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                        displayInfo(icon: "phone.fill", text: phoneNumber)
                        displayInfo(icon: "envelope.fill", text: email)
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
                
                Spacer().frame(height: 40)
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

// Format for phone number
func formatPhoneNumber(_ number: String) -> String {
    // Remove any non-numeric characters
    let digits = number.filter { "0123456789".contains($0) }

    // Format for 1-3 digits, 4-6 digits, and 6-9 digits
    let formattedNumber: String
    switch digits.count {
        case 0...3:
            formattedNumber = digits
        case 4...6:
            let areaCode = digits.prefix(3)
            let rest = digits.suffix(from: digits.index(digits.startIndex, offsetBy: 3))
            formattedNumber = "(\(areaCode)) \(rest)"
        default:
            let areaCode = digits.prefix(3)
            let midSection = digits[digits.index(digits.startIndex, offsetBy: 3)..<digits.index(digits.startIndex, offsetBy: 6)]
            let lastSection = digits.suffix(from: digits.index(digits.startIndex, offsetBy: 6))
            formattedNumber = "(\(areaCode)) \(midSection)-\(lastSection)"
    }

    return formattedNumber
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
            // Keep phone number format
            .onChange(of: info.wrappedValue) { oldVal, newVal in
                if label == "Phone Number" {
                    info.wrappedValue = formatPhoneNumber(newVal)
                }
            }
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
    .fontWeight(.medium)
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
