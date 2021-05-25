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
    
    var body: some View {
        VStack {
            Image("Create group icon")
                .scaledToFit()
                .foregroundColor(.dvPurple)
            Text("Criar grupo")
                .foregroundColor(.dvPurple)
            Divider()
            
            HStack {
                Text("Nome do grupo:")
                Spacer()
                
                TextField("Dê um nome ao grupo", text: $groupName)
                .cornerRadius(5)
                .accentColor(.dvPurple)
                .disableAutocorrection(true)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            
            AvatarHandler()
            Divider().padding(.top)
            
            HStack {
                CustomButton(isPresented: $isPresented, textBody: $groupName, title: "Cancelar",
                         titleColor: Color.primary, action: .cancelar, backgroundColor: Color(.controlColor))
                Spacer()
                CustomButton(isPresented: $isPresented, textBody: $groupName, title: "Salvar",
                         titleColor: .white, action: .salvar, backgroundColor: .dvLightPurple)
            }
            
        }.padding()
        
    }
}
