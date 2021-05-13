//
//  ContentCover.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 12/05/21.
//

import SwiftUI

struct ContentCover: View {
    var title: String
    var backGroundColor: Color
    let sizeEditModeImages = CGSize(width: 40, height: 40)
    let sizeProfileImage = CGSize(width: 50, height: 50)
    @State var size = CGSize(width: 162, height: 150)
    @State var profileImage: UIImage?
    @State var isEditMode: Bool = false
    @State var isSharedContent: Bool = false
    
    var body: some View {
        ZStack(content: {
            Rectangle()
                .fill(backGroundColor)
                .cornerRadius(14)
            
            AuxiliarView(size: size)
                .fill(Color.white).cornerRadius(14).opacity(0.1)
            
            Text(title)
                .foregroundColor(.white)
                .font(.title)
                .padding()
            
            CircleImageProfile(image: $profileImage, show: $isSharedContent, size: sizeProfileImage)
                .position(x: 50.0, y: 1.0)
            
            CircleButton(imageName: "pencil.circle",
                        backGroundColor: Color.blue,
                        size: sizeEditModeImages,
                        show: $isEditMode)
                .position(x: 10, y: size.height - 10)
            
            CircleButton(imageName: "xmark.circle",
                        backGroundColor: Color.red,
                        size: sizeEditModeImages,
                        show: $isEditMode)
                .position(x: size.width - 10, y: 10)
            
        })
        .frame(width: size.width, height: size.height, alignment: .center)
    }
}

struct ContentCover_Previews: PreviewProvider {
    static var previews: some View {
        ContentCover(title: "Example",
                     backGroundColor: .dvYellow,
                     profileImage: nil,
                     isEditMode: true,
                     isSharedContent: true)
    }
}
