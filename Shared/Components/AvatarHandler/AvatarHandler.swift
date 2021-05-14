//
//  AvatarHandler.swift
//  multi-challenge (iOS)
//
//  Created by Mateus Nobre on 12/05/21.
//

import SwiftUI

struct AvatarHandler: View {
    
    let colors: [Color] = [
        Color(UIColor.dvNavyBlue),
        Color(UIColor.dvBlue),
        Color(UIColor.dvPurple),
        Color(UIColor.dvLightPurple),
        Color(UIColor.dvMagenta),
        Color(UIColor.dvRed),
        Color(UIColor.dvOrange),
        Color(UIColor.dvYellow)
    ]
    
    @State var selectedColorIndex: Int = 0
    @State var selectedColor: Color = Color(UIColor.dvNavyBlue)
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    
    let colorCircleRadius = CGFloat(30)
    let insideCircleRadius = CGFloat(19)
    
    var body: some View {
        VStack {
            Text("Escolha uma imagem ou uma cor:")
                .bold()
            
            ImageOrColorView(
                isShowPhotoLibrary: self.$isShowPhotoLibrary,
                image: self.$image,
                selectedColor: self.$selectedColor
            )
            
            ColorsList(
                colors: colors,
                colorCircleRadius: colorCircleRadius,
                selectedColorIndex: self.$selectedColorIndex,
                selectedColor: self.$selectedColor,
                image: self.$image
            )
        }
    }
}

struct AvatarHandler_Previews: PreviewProvider {
    static var previews: some View {
        AvatarHandler()
    }
}
