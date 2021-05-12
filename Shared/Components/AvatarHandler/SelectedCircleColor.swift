//
//  SelectedCircleColor.swift
//  multi-challenge (iOS)
//
//  Created by Mateus Nobre on 12/05/21.
//

import SwiftUI

struct SelectedCircleColor: View {
    
    var color: Color
    var size: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .frame(width: size * 0.60, height: size * 0.60)
            Circle()
                .strokeBorder(color, lineWidth: 4)
                .frame(width: size, height: size)
        }
    }
}

struct SelectedCircleColor_Previews: PreviewProvider {
    static var previews: some View {
        SelectedCircleColor(color: Color.blue, size: 30)
    }
}
