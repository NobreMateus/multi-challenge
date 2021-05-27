//
//  GroupView.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 19/05/21.
//

import SwiftUI

struct GroupView: View {
    @State var title: String = "Group title"
    @State var searchText: String = ""

    let mock = [
        Item(image: Image("original")),
        Item(image: Image("original")),
        Item(image: Image("original"))
    ]
    
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
        NavigationView {
            VStack(spacing: 0) {
                SearchBar(text: $searchText)
                    .padding([.top, .leading, .trailing])
                HStack(spacing: 0) {
                    Button(action: {}, label: {
                        UserRoundedIcon(selectedColor: .dvLightPurple, size: 55)
                    })
                    UserRoundedImageList(size: 34, mock: mock, editMode: false)
                    Button(action: {}, label: {
                        ChainButton(size: 44, selectedColor: .dvLightPurple)
                    })
                }
                .padding([.trailing, .leading])
                //ContentCoverList(isSharedContent: false, isEditMode: false)
            }
            .navigationBarTitle(title, displayMode: .inline)
            .navigationBarItems(
                leading: btnBack,
                trailing: NavigationLink(destination: AddMaterial()) {
                    Image(systemName: "plus").foregroundColor(.dvLightPurple)
                        .font(.system(size: 24))
                }
                )
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .navigationBarHidden(true)
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
