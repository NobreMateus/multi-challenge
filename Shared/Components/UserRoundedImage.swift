//
//  UserRoundedImage.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 13/05/21.
//

import SwiftUI

struct UserRoundedImage: View {
    var size: CGFloat
    @State var image: UIImage

    var body: some View {
        ZStack {
            Image(uiImage: self.image)
                .resizable()
                .scaledToFill()
                .frame(width: size, height: size)
                .mask(Circle())
            ZStack {
                Circle()
                    .strokeBorder(Color.white, lineWidth: size * 0.06)
                    .background(Circle().foregroundColor(.dvRed))
                    .frame(width: size * 0.7, height: size * 0.7)
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.system(size: size * 0.32, weight: .bold))
                    .onTapGesture {
                        // Do Something
                    }
            }
            .offset(x: size * 0.5, y: -size * 0.5)
        }
        .padding(.trailing, size * 0.32)

    }
}
