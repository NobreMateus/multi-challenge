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
                Button(action: {
                    isPresented = false
                }, label: {
                    Text("Cancelar")
                        .padding(.init(.init(top: 5, leading: 30, bottom: 5, trailing: 30)))
                })
                .shadow(radius: 5)
                .buttonStyle(CustomButtonStyle(foregroundColor: .primary, backgroundColor: Color(.controlColor)))
               
                Spacer()
                Button(action: {
                    // save group
                    print(groupName)
                    isPresented = false
                }, label: {
                    Text("Salvar")
                        .padding(.init(.init(top: 5, leading: 30, bottom: 5, trailing: 30)))
                })
                .shadow(radius: 5)
                .buttonStyle(CustomButtonStyle(foregroundColor: .white, backgroundColor: .dvLightPurple))                 
            }
            
        }.padding()
        
    }
}
