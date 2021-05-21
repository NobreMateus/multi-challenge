//
//  CopyTo.swift
//  multi-challenge (iOS)
//
//  Created by Eduardo Oliveira on 19/05/21.
//

import SwiftUI

struct CopyTo: View {
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    HStack {
                        Button(action: {}, label: {
                            Label("Voltar", systemImage: "chevron.left")
                        })
                        .foregroundColor(.dvLightPurple)
                        .padding(.leading, 15)
                        
                        Spacer()
                    }
                    Text("Nome do material").bold()
                }
                .padding(.top, 44)
                Text("Copiar para...").padding([.top, .leading, .trailing])
                    .frame(maxWidth: .infinity, maxHeight: 0, alignment: .leading)
                    .font(Font(UIFont.systemFont(ofSize: 34, weight: .bold)))
                    .padding([.top, .bottom])
                    .padding(.bottom)
                ExDivider().padding(0)
            }
            .background(Color.dvLightGray)
            GroupList(sendTo: true)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .edgesIgnoringSafeArea(.top)
    }
}

struct CopyTo_Previews: PreviewProvider {
    static var previews: some View {
        CopyTo()
    }
}
