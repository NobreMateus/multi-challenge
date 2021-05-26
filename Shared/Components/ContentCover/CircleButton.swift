//
//  CircleButton.swift
//  multi-challenge
//
//  Created by Lidiane Gomes Barbosa on 13/05/21.
//

import SwiftUI
enum ButtonType {
    case delete
    case edit
}

struct CircleButton: View {
    var imageName: String
    var backGroundColor: Color = .clear
    var size: CGSize
    var buttonType: ButtonType
    @Binding var show: Bool
    var content: Content

    var body: some View {
        Button(action: {
            if show {
                switch buttonType {
                case .delete:
                    ContentRepository.shared.delete(content: content)
                case .edit:
                    print("edit")
                }
            }
        }, label: {
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
