//
//  AvatarHandler.swift
//  multi-challenge (iOS)
//
//  Created by Mateus Nobre on 12/05/21.
//

import SwiftUI

struct AvatarHandler: View {
    
    @State
    var selectedColorIndex: Int = 6
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
    let colorCircleRadius = CGFloat(30)
    let insideCircleRadius = CGFloat(19)
    
    var body: some View {
        VStack {
            Text("Escolha uma imagem ou uma cor:")
                .bold()
            HStack {
                ForEach(colors.indices, id: \.self) { index in
                    if index == selectedColorIndex {
                        SelectedCircleColor(color: colors[index], size: colorCircleRadius)
                        .onTapGesture {
                            selectedColorIndex = index
                        }
                    } else {
                        CircleColor(color: colors[index], size: colorCircleRadius)
                        .onTapGesture {
                            selectedColorIndex = index
                        }
                    }
                }
            }
        
        }
    }
}

struct AvatarHandler_Previews: PreviewProvider {
    static var previews: some View {
        AvatarHandler()
    }
}
