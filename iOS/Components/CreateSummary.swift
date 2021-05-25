//
//  CreateSummary.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 19/05/21.
//

import SwiftUI

struct CreateSummary: View {
    @Binding var title: String
    @Binding var textBody: String
    var size: CGSize

    var body: some View {
        Divider()
        
        VStack {
            VStack {
                Text("Titulo do resumo:")
                    .font(.body)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                TextField("Adicione um título", text: $title)
                    .accentColor(.dvLightPurple)
                    .keyboardType(.default)
                    .padding(8)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }
            .onTapGesture {
                self.hideKeyboard()
            }
            .padding()
            
            Divider()
            
            Text("\(textBody.count) caracteres")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
            
            ZStack(alignment: .topLeading) {

                if textBody.isEmpty {
                    Text("Escreva seu texto aqui")
                        .foregroundColor(Color(UIColor.placeholderText))
                        .padding(.horizontal, 8)
                        .padding(.vertical, 12)
                        .showView(textBody.isEmpty)
                }

                SummaryView(editMode: .constant(true), text: $textBody)
                    .padding(4)
                    .frame(minWidth: size.width * 0.95, minHeight: size.height * 0.5, alignment: .center)

                    .font(.body)
                    .clipped()

            }.onTapGesture {
                self.hideKeyboard()
            }
        }
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
