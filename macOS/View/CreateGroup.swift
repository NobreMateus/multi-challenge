//
//  CreateGroup.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 17/05/21.
//

import SwiftUI

enum CreateGroupAction {
    case cancelar, salvar
}

struct CreateGroup: View {
    @Binding var isPresented: Bool
    @State private var groupName: String = ""
    @State private var showAlert: Bool = false
    var body: some View {
        VStack {
            Image("Create group icon")
                .scaledToFit()
                .foregroundColor(.dvPurple)
            Text("Criar grupo")
                .foregroundColor(.dvPurple)
            Divider()
            Text("Nome do grupo não pode ser vazio").foregroundColor(.white).background(Color.red).showView(showAlert)
            HStack {
                Text("Nome do grupo:")
                Spacer()
                
                TextField("Dê um nome ao grupo", text: $groupName, onEditingChanged: { _ in
                    showAlert = false
                })
                .cornerRadius(5)
                .accentColor(.dvPurple)
                .disableAutocorrection(true)
            }.padding()
            
            AvatarHandler()
            Divider().padding(.top)
            
            HStack {
                CustomButton(isPresented: $isPresented, textBody: $groupName, title: "Cancelar",
                         titleColor: Color.primary, action: .cancelar, backgroundColor: Color(.controlColor), showAlert: $showAlert)
                Spacer()
                CustomButton(isPresented: $isPresented, textBody: $groupName, title: "Salvar",
                         titleColor: .white, action: .salvar, backgroundColor: .dvLightPurple, showAlert: $showAlert)
            }
            
        }.padding()
        
    }
}
