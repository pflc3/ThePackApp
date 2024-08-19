import SwiftUI
import PhotosUI

struct ProfileView: View {
    @State private var username: String = "PackUser"
    @State private var bio: String = "Dog lover and SwiftUI enthusiast."
    @State private var email: String = "pupdevs@example.com"
    @State private var phoneNumber: String = "(123) 456-7890"
    @State private var password: String = ""
    @State private var isEditing: Bool = false
    @State private var profileImage: Image = Image(systemName: "person.crop.circle.fill")
    @State private var showingImagePicker: Bool = false
    @State private var inputImage: UIImage?
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Profile picture
                profileImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.blue.opacity(0.7), lineWidth: 4))
                    .shadow(radius: 10)
                    .padding(.top, 40)
                    .onTapGesture {
                        if isEditing {
                            showingImagePicker = true
                        }
                    }
                
                if isEditing {
                    VStack(spacing: 15) {
                        
                        FormRow(label: "Username", text: $username)
                        FormRow(label: "Bio", text: $bio)
                        FormRow(label: "Email", text: $email, keyboardType: .emailAddress)
                        FormRow(label: "Phone", text: $phoneNumber, keyboardType: .phonePad)
                        SecureFormRow(label: "Password", text: $password)
                    }
                    .padding(.horizontal, 20)
                    .foregroundColor(.black)
                } else {
                    Text(username)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                    Text(bio)
                        .font(.title3)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                    Spacer()
                    VStack(alignment: .leading, spacing: 10) {
                        InfoRow(icon: "envelope.fill", text: email)
                            .font(.title2)
                        Spacer()
                        Spacer()
                        InfoRow(icon: "phone.fill", text: phoneNumber)
                            .font(.title2)
                    }
                    .padding(.horizontal, 40)
                }
                
                Button(action: {
                    if isEditing {
                        // Save action can be implemented here
                    }
                    isEditing.toggle()
                }) {
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
            .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                ImagePicker(image: $inputImage)
            }
        }
        .background(blueGradient())
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        profileImage = Image(uiImage: inputImage)
    }
}

struct FormRow: View {
    var label: String
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        HStack {
            Text(label)
                .fontWeight(.medium)
                .frame(width: 100, alignment: .leading)
            TextField(label, text: $text)
                .keyboardType(keyboardType)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct SecureFormRow: View {
    var label: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Text(label)
                .fontWeight(.medium)
                .frame(width: 100, alignment: .leading)
            SecureField(label, text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct InfoRow: View {
    var icon: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.white)
            Text(text)
                .foregroundColor(.white)
        }
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    class Coordinator: NSObject, UINavigationControllerDelegate, PHPickerViewControllerDelegate {
        var parent: ImagePicker

        init(parent: ImagePicker) {
            self.parent = parent
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)

            guard let provider = results.first?.itemProvider else { return }

            if provider.canLoadObject(ofClass: UIImage.self) {
                provider.loadObject(ofClass: UIImage.self) { image, _ in
                    DispatchQueue.main.async {
                        self.parent.image = image as? UIImage
                    }
                }
            }
        }
    }

    @Binding var image: UIImage?

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    func makeUIViewController(context: Context) -> some UIViewController {
        var configuration = PHPickerConfiguration()
        configuration.filter = .images

        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator

        return picker
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

#Preview {
    ProfileView()
}
