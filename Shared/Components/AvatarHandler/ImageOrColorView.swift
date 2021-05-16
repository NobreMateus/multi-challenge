//
//  ImageOrColorView.swift
//  multi-challenge (iOS)
//
//  Created by Mateus Nobre on 13/05/21.
//

import SwiftUI

struct ImageOrColorView: View {
    
    @Binding var isShowPhotoLibrary: Bool
    @Binding var image: UIImage
    @Binding var selectedColor: Color
    
    var body: some View {
        ZStack {
            Image(uiImage: self.image)
                .resizable()
                .scaledToFill()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .background(ZStack{
                    Circle()
                        .foregroundColor(selectedColor)
                    Rectangle()
                        .foregroundColor(.white.opacity(0.1))
                        .offset(x: 0, y: 50)
                        .rotationEffect(.degrees(-45))
                        .mask(Circle())
                    Image(systemName: "person.2.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 36))
                })
                .mask(Circle())
            
            ZStack{
                Circle()
                    .strokeBorder(Color.white, lineWidth: 4)
                    .background(Circle().foregroundColor(selectedColor))
                    .frame(width: 40, height: 40, alignment: .bottomTrailing)
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
            }
            .offset(x: 40, y: 40)
            
        }.onTapGesture {
            self.isShowPhotoLibrary = true
        }.sheet(isPresented: $isShowPhotoLibrary) {
            ImagePicker(selectedImage: self.$image, sourceType: .photoLibrary)
        }.padding()
        .animation(.default)
        
    }
}

struct AvatarHandler2_Previews: PreviewProvider {
    static var previews: some View {
        AvatarHandler()
    }
}
