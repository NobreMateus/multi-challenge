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
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }, label: {
            HStack {
                Label("Voltar", systemImage: "chevron.left")
                .aspectRatio(contentMode: .fit)
            }
        })
    }
    
    var body: some View {
        
        GeometryReader { _ in
            VStack {
                VStack {
                    HStack {
                        btnBack
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
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding()
                Divider()
                AvatarHandler()
                    .padding()
                Divider()
            }
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .navigationBarHidden(true)
    }
}
