//
//  UserRoundedIcon.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 20/05/21.
//

import SwiftUI

struct UserRoundedIcon: View {
    var selectedColor: Color
    var size: CGFloat

    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(selectedColor)
                .frame(width: size, height: size)
            Rectangle()
                .foregroundColor(.white)
                .frame(width: size, height: size)
                .opacity(0.1)
                .offset(x: 0, y: size / 2)
                .rotationEffect(.degrees(-45))
                .mask(Circle())
            Image(systemName: "person.2.fill")
                .foregroundColor(.white)
                .font(.system(size: size * 0.33))
        }
    }
}

struct UserRoundedIcon_Previews: PreviewProvider {
    static var previews: some View {
        UserRoundedIcon(selectedColor: .dvLightPurple, size: 55)
    }
}
