//
//  SummaryEditScreen.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 26/05/21.
//

import SwiftUI

struct SumaryEditScreen: View {
        
    @Binding var title: String
    @Binding var textBody: String
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Titulo do resumo:")
                    .font(.body)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                TextField("Adicione um título", text: $title)
                    .accentColor(.dvLightPurple)
                    .padding(8)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3),
                                        lineWidth: 1), alignment: .center)

                SummaryView(editMode: .constant(true), text: $textBody)
            }
            .padding()
            .navigationTitle("Editar Resumo")
                
                // To do:
                // Lógica para salvar a edição
        
        }
        
    }
}

struct SumaryEditScreen_Previews: PreviewProvider {
    static var previews: some View {
        SumaryEditScreen(title: .constant("Titulo"), textBody: .constant("Aqui eu escrevo um resumo épico!"))
    }
}
