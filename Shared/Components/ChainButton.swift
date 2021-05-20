//
//  ChainButton.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 20/05/21.
//

import SwiftUI

struct ChainButton: View {
    var size: CGFloat
    var selectedColor: Color

    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(selectedColor)
                .frame(width: size, height: size)
            Image("chain")
                .foregroundColor(.white)
                .font(.system(size: size * 0.6))
        }
    }
}

struct ChainButton_Previews: PreviewProvider {
    static var previews: some View {
        ChainButton(size: 44, selectedColor: .dvLightPurple)
    }
}
