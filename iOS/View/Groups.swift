//
//  Groups.swift
//  multi-challenge (iOS)
//
//  Created by Eduardo Oliveira on 19/05/21.
//

import SwiftUI

struct Groups: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    VStack {
                        Spacer()
                        Text("Grupos").padding([.top, .leading, .trailing])
                            .frame(maxWidth: .infinity, maxHeight: 0, alignment: .leading)
                            .font(Font(UIFont.systemFont(ofSize: 34, weight: .bold)))
                            .padding([.top, .bottom])
                            .padding(.bottom)
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Button(action: {}, label: {
                            Image(systemName: "plus")
                                .foregroundColor(.dvLightPurple)
                                .font(.system(size: 24))
                                .padding(.top)
                        })
                        UserRoundedImage(size: 34, image: Image("invitation"), showButton: false)
                            .offset(x: 0, y: 24)
                    }
                }
                .frame(height: 130)
                ExDivider().padding(0)
            }
            .background(Color.dvLightGray)
            GroupList()
            Spacer()
            FooterInvitationGroup()
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .edgesIgnoringSafeArea(.top)
    }
}

struct Groups_Previews: PreviewProvider {
    static var previews: some View {
        Groups()
    }
}
