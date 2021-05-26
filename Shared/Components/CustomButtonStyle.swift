//
//  CustomButtonStyle.swift
//  multi-challenge (macOS)
//
//  Created by Lidiane Gomes Barbosa on 26/05/21.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    var foregroundColor: Color
    var backgroundColor: Color
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? foregroundColor.opacity(1.2) : foregroundColor)
            .background(configuration.isPressed ? backgroundColor.opacity(1.2) : backgroundColor)
            .cornerRadius(6.0)
            .padding()
    }
}
