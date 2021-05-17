//
//  CircleColor.swift
//  multi-challenge (iOS)
//
//  Created by Mateus Nobre on 12/05/21.
//

import SwiftUI

struct CircleColor: View {
    
    var identifier: Int
    var color: Color
    var size: CGFloat
    @Binding var selectedIdentifier: Int
    @Binding var image: UIImage
    @Binding var selectedColor: Color
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .frame(
                    width: identifier == selectedIdentifier ? size * 0.6 : size,
                    height: identifier == selectedIdentifier ? size * 0.6 : size
                )
                .animation(.default)
                .onTapGesture {
                    selectedIdentifier = identifier
                    image = UIImage()
                    selectedColor = color
                }
            Circle()
                .strokeBorder(color, lineWidth: 4)
                .frame(width: size, height: size)
        }
        
    }
}
