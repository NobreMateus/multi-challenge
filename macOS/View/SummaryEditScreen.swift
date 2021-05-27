//
//  SummaryEditScreen.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 26/05/21.
//

import SwiftUI

struct SummaryEditScreen: View {
        
    @ObservedObject var content: Content
    @State var title: String
    @State var textBody: String

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    init(content: Content) {
        self.content = content
        self._title =  State(initialValue: content.title ?? "")
        self._textBody = State(initialValue: content.body ?? "")
    }
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack {
                    
                    VStack {
                        HStack {
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
                        }
                        
                        SummaryView(editMode: .constant(true), text: $textBody)
                    }
                    .padding()
                    .frame(width: geometry.size.width)
                    .navigationTitle("Editar Resumo")
            
                    HStack {
                        Button("Salvar") {}
                        Spacer()
                        Button("Cancelar") {}
                    }
                    .padding()
                    // To do:
                    // Lógica para salvar a edição
            
                }
            }
        }
    }
}
//
//struct SummaryEditScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SummaryEditScreen(title: .constant("Titulo"), textBody: .constant("Aqui eu escrevo um resumo épico!"))
//    }
//}
