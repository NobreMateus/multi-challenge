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
    @Binding var selectedColor: Color
    #if os(iOS)
    @Binding var image: UIImage
    #else
    @Binding var image: NSImage
    #endif
    
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
                    #if os(iOS)
                        image = UIImage()
                    #else
                        image = NSImage()
                    #endif
                    
                    selectedColor = color
                }
            Circle()
                .strokeBorder(color, lineWidth: 4)
                .frame(width: size, height: size)
        }
        
    }
}
