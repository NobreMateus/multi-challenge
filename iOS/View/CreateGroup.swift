//
//  CreateGroup.swift
//  multi-challenge (iOS)
//
//  Created by Lidiane Gomes Barbosa on 17/05/21.
//

import SwiftUI

struct CreateGroup: View {
    @State private var groupName: String = ""
    @Binding var isPresented: Bool
    
    var body: some View {
        
        GeometryReader { _ in
            VStack {
                VStack {
                    HStack {
                        
                        Button(action: {isPresented = false}, label: {
                            Label("Voltar", systemImage: "chevron.left")
                        }).foregroundColor(.dvLightPurple)
                        
                        Spacer()
                        Button("Confirmar", action: {
                            // save here
                            
                        }).foregroundColor(.dvLightPurple)
                        
                    }.padding([.top, .leading, .trailing])
                    
                    Text("Criar Grupo").padding([.top, .leading, .trailing])
                        .frame(maxWidth: .infinity, maxHeight: 0, alignment: .leading)
                        .font(Font(UIFont.systemFont(ofSize: 34, weight: .bold)))
                        .padding([.top, .bottom])
                        .padding(.bottom)
                    
                    ExDivider().padding(0)
                    
                }.background(Color.dvLightGray)
                
                VStack {
                    
                    Text("Nome do grupo: ")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    TextField("Dê um nome ao grupo", text: $groupName)
                        .accentColor(.dvLightPurple)
                        .keyboardType(.default)
                        .padding(8)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.3),
                                            lineWidth: 1), alignment: .center)
                }.padding()
                
                Divider()
                
                AvatarHandler()
                    .padding()
                
                Divider()
            }
            
        }.ignoresSafeArea(.keyboard, edges: .bottom)
    }
}
