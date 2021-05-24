//
//  CreateGroup.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 17/05/21.
//

import SwiftUI

struct CreateGroup: View {
    @Binding var isPresented: Bool
    @State private var groupName: String = ""
    
    var body: some View {
        VStack {
            Image("CreateGroupIcon")
                .scaledToFit()
                .foregroundColor(.dvPurple)
            Text("Criar grupo")
                .foregroundColor(.dvPurple)
            Divider()
            
            HStack {
                Text("Nome do grupo")
                Spacer()
                TextField("Dê um nome ao grupo", text: $groupName)
                    .accentColor(.dvPurple)
                    .keyboardType(.default)
                    .padding(8)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(UIColor.separator),
                                        lineWidth: 1), alignment: .center)
            }
            
            Text("Escolha uma imagem ou cor:")
            AvatarHandler()
            
        }
       
    }
}
//
//struct CreateGroup_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateGroup()
//    }
//}
