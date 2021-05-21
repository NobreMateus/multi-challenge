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
    #if os(iOS)
    @Binding var image: UIImage
    #else
    @Binding var image: NSImage
    #endif
    
    var body: some View {
        HStack {
            ForEach(colors.indices, id: \.self) { index in
                CircleColor(
                    identifier: index,
                    color: colors[index],
                    size: colorCircleRadius,
                    selectedIdentifier: self.$selectedColorIndex,
                    selectedColor: self.$selectedColor,
                    image: $image
                ).onTapGesture {
                    selectedColorIndex = index
                    selectedColor = colors[index]
                    #if os(iOS)
                        image = UIImage()
                    #else
                        image = NSImage()
                    #endif
                }
            }
        }
    }
}
