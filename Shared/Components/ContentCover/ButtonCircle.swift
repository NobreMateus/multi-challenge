//
//  ImageCircle.swift
//  multi-challenge
//
//  Created by Lidiane Gomes Barbosa on 13/05/21.
//

import SwiftUI

struct ButtonCircle: View {
    var imageName: String
    var backGroundColor: Color = .clear
    var size: CGSize
    @Binding var show: Bool
  
    var body: some View {
        Button(action: {}, label: {
            Image(systemName: imageName)
                .resizable()
                .frame(width: size.width, height: size.height, alignment: .center)
                .background(backGroundColor)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 0.5)
                )
                .foregroundColor(.white)
                .showView(show)
        })
    }
}
