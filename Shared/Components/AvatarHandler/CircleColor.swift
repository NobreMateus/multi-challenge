//
//  CircleColor.swift
//  multi-challenge (iOS)
//
//  Created by Mateus Nobre on 12/05/21.
//

import SwiftUI

struct CircleColor: View {
    
    var color: Color
    var size: CGFloat
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: size, height: size)
    }
}

struct CircleColor_Previews: PreviewProvider {
    static var previews: some View {
        CircleColor(color: Color.red, size: 30)
    }
}
