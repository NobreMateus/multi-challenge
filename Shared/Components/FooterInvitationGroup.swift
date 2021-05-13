//
//  FooterInvitationGroup.swift
//  multi-challenge (iOS)
//
//  Created by Eduardo Oliveira on 13/05/21.
//

import SwiftUI

struct FooterInvitationGroup: View {
    @State private var groupCode: String = ""
    
    var body: some View {
        ZStack {
            Color.init(.systemGray5)
                .opacity(0.2)
                .frame(height: 74)
            HStack {
                TextField(
                    "Entre em um grupo com o código...",
                    text: $groupCode
                )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                Button {
                    print("Invitation")
                } label: {
                    Image("invitation")
                }.frame(width: 44, height: 44)
            }.padding(15)
        }.border(Color.init(.systemGray5), width: 1)
    }
}

struct FooterInvitationGroup_Previews: PreviewProvider {
    static var previews: some View {
        FooterInvitationGroup()
    }
}
