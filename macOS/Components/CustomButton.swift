//
//  CustomButton.swift
//  multi-challenge (macOS)
//
//  Created by Lidiane Gomes Barbosa on 25/05/21.
//

import SwiftUI

struct CustomButton: View {
    @Binding var isPresented: Bool
    @Binding var textBody: String
    var title: String
    var titleColor: Color
    var action: CreateGroupAction
    var backgroundColor: Color
    @Binding var showAlert: Bool
    
    var body: some View {
        Button(action: {
            
            if action == .salvar && textBody.isEmpty {
                showAlert = true
            } else if action == .cancelar {
                isPresented = false
            } else if action == .salvar && !textBody.isEmpty {
                isPresented = false
                print(textBody)
            }
            
        }, label: {
            Text(title)
                .padding(.init(.init(top: 5, leading: 30, bottom: 5, trailing: 30)))
        })
        .shadow(radius: 5)
        .buttonStyle(BlueButtonStyle(foregroundColor: titleColor, backgroundColor: backgroundColor))
    }
}

struct BlueButtonStyle: ButtonStyle {
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