//
//  ImagePicker.swift
//  multi-challenge (iOS)
//
//  Created by Mateus Nobre on 13/05/21.
//

import SwiftUI

#if os(iOS)
import UIKit

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage
    @Environment(\.presentationMode) var presentationMode
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}

final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
 
    var parent: ImagePicker
 
    init(_ parent: ImagePicker) {
        self.parent = parent
    }
 
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            parent.selectedImage = image
        }
        parent.presentationMode.wrappedValue.dismiss()
    }
}

#endif
