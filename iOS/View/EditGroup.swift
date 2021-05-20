//
//  EditGroup.swift
//  multi-challenge (iOS)
//
//  Created by Eduardo Oliveira on 20/05/21.
//

import SwiftUI

struct EditGroup: View {
    
    @State private var showingAlert = false
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
                    
                    Text("Editar Grupo").padding([.top, .leading, .trailing])
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
                                    .stroke(Color(UIColor.separator),
                                            lineWidth: 1), alignment: .center)
                }.padding()
                
                Divider()
                
                AvatarHandler()
                    .padding()
                
                Divider()
                
                VStack {
                    
                    Text("Remover integrantes: ")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    UserRoundedImageList(size: 25.0, mock: Item.dataModels, editMode: true)
                }.padding()
                
                Button(action: {
                    showingAlert = true
                }) {
                    VStack {
                        ExDivider().padding(5)
                        Text("Excluir grupo")
                            .foregroundColor(Color.red)
                        ExDivider().padding(0)
                    }
                }
            }
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("Aviso"),
                message: Text("Você irá apagar este grupo e todos os conteúdos dele, outros participantes também não terão mais acesso!"),
                primaryButton: .default(Text("Cancelar")) {
                    print("Canceling...")
                },
                secondaryButton: .destructive(Text("Confirmar").bold()) {
                    print("Deleting...")
                }
            )
        }
    }
}
