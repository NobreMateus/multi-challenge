//
//  SummaryEditScreen.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 26/05/21.
//

import SwiftUI

struct SummaryEditScreen: View {

    @State var title: String = ""
    @State var textBody: String = ""
    var content: Content

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {

        NavigationView {
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
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3),
                                        lineWidth: 1), alignment: .center)

                SummaryView(editMode: .constant(true), text: $textBody)
            }
            .onTapGesture {
                self.hideKeyboard()
            }
            .padding()
            .navigationBarTitle("Editar Resumo", displayMode: .inline)
            .navigationBarItems(trailing: Button("Concluir") {
                content.title = title
                content.body = textBody
                ContentRepository.shared.save()

                self.presentationMode.wrappedValue.dismiss()
            })
        }
        
    }
}

//struct SumaryEditScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SumaryEditScreen(title: .constant("Titulo"), textBody: .constant("Aqui eu escrevo um resumo épico!"))
//    }
//}
