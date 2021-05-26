//
//  EditProfileView.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 24/05/21.
//

import SwiftUI

struct EditProfileView: View {
    @State private var name: String = ""

    var body: some View {

        NavigationView {

            VStack(spacing: 0) {
                Color.dvGray6
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: 1)
                Divider()
                VStack {

                    Text("Nome: ")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    TextField("Digite um nome", text: $name)
                        .accentColor(.dvLightPurple)
                        .keyboardType(.default)
                        .padding(8)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.separator),
                                            lineWidth: 1), alignment: .center)
                }.padding()

                Divider()

                AvatarHandler()
                    .padding()

                Divider()
                Spacer()
            }
            .navigationTitle("Editar Perfil")
            .navigationBarItems(trailing: Button(action: {}, label: {
                Text("Confirmar")
            }))
        }
        .ignoresSafeArea(.all)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
