//
//  ColorsList.swift
//  multi-challenge (iOS)
//
//  Created by Mateus Nobre on 13/05/21.
//

import SwiftUI

struct ColorsList: View {
    
    var colors: [Color]
    var colorCircleRadius: CGFloat
    @Binding var selectedColorIndex: Int
    @Binding var selectedColor: Color
    @Binding var image: UIImage
    
    var body: some View {
        HStack {
            ForEach(colors.indices, id: \.self) { index in
                CircleColor(
                    identifier: index,
                    color: colors[index],
                    size: colorCircleRadius,
                    selectedIdentifier: self.$selectedColorIndex,
                    image: self.$image,
                    selectedColor: self.$selectedColor
                ).onTapGesture {
                    selectedColorIndex = index
                    selectedColor = colors[index]
                    image = UIImage()
                }
            }
        }
    }
}
