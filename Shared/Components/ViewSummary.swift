//
//  ViewSummary.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 24/05/21.
//

import SwiftUI

struct ViewSummary: View {
    @State private var title: String = "Titulo"
    @State private var textBody: String = "Aqui é um resumo bem bonito"
    @State private var editMode = false
    private var size: CGSize = CGSize(width: 100, height: 100)
    
    var body: some View {
        Divider()
        
        VStack {
            VStack {
                Text("Titulo do resumo:")
                    .font(.body)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                !editMode ?
                    AnyView(
                        HStack {
                            Text(title)
                            Spacer()
                        }
                    )
                    : AnyView(
                        TextField("Adicione um título", text: $title)
                            .accentColor(.dvLightPurple)
                            .keyboardType(.default)
                            .padding(8)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray.opacity(0.3), lineWidth: 1), alignment: .center)
                    )
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

                SummaryView(editMode: editMode, text: $textBody)
                    .padding(4)
                    .frame(minHeight: size.height * 0.5, alignment: .center)
                    .font(.body)
                    .clipped()

            }.onTapGesture {
                self.hideKeyboard()
            }
        }
    }
}

struct ViewSummary_Previews: PreviewProvider {
    static var previews: some View {
        ViewSummary()
    }
}
