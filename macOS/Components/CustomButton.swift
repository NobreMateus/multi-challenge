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
    
    var body: some View {
        Button(action: {
            
            switch action {
            case .salvar:
                // save
                isPresented = false
            case .cancelar:
                isPresented = false
            }
            
        }, label: {
            Text(title)
                .padding(.init(.init(top: 5, leading: 30, bottom: 5, trailing: 30)))
        })
        .shadow(radius: 5)
        .buttonStyle(CustomButtonStyle(foregroundColor: titleColor, backgroundColor: backgroundColor))
    }
}
