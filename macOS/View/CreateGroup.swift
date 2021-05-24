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
                MyButton(isPresented: $isPresented, textBody: $groupName, title: "Cancelar",
                         titleColor: Color.primary, action: .cancelar, backgroundColor: Color(.controlColor), showAlert: $showAlert)
                Spacer()
                MyButton(isPresented: $isPresented, textBody: $groupName, title: "Salvar",
                         titleColor: .white, action: .salvar, backgroundColor: .dvLightPurple, showAlert: $showAlert)
            }
            
        }.padding()
        
    }
}

struct MyButton: View {
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
