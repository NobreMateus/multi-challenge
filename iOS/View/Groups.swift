//
//  Groups.swift
//  multi-challenge (iOS)
//
//  Created by Eduardo Oliveira on 19/05/21.
//

import SwiftUI

struct Groups: View {
    
    @State var isPresented: Bool = true
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ZStack {
                    Color.dvGray6
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.5)
                        .frame(height: 44)
                    VStack(spacing: 0) {
                        Divider()
                            .padding(.top)
                    }
                }
                GroupList()
                    .navigationBarTitle("Grupos", displayMode: .large)
                    .toolbar { // <2>
                        ToolbarItem(placement: .navigationBarTrailing) { // <3>
                            VStack {
                                NavigationLink(destination: CreateGroup(isPresented: $isPresented)) {
                                    Image(systemName: "plus").foregroundColor(.dvLightPurple)
                                        .font(.system(size: 24))
                                        .padding(.top)
                                }
                                
                                UserRoundedImage(size: 34, image: Image("original"), showButton: false)
                                    .offset(x: 0, y: 24)
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: -18, bottom: 0, trailing: -18))
                Spacer()
                FooterInvitationGroup()
            }
        }
    }
}

struct Groups_Previews: PreviewProvider {
    static var previews: some View {
        Groups()
    }
}
