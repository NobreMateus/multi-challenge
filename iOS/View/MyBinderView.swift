//
//  MyBinderView.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 18/05/21.
//

import SwiftUI

struct MyBinderView: View {

    @State var searchText: String = ""

    @FetchRequest(
            sortDescriptors: [NSSortDescriptor(keyPath: \Content.title, ascending: true)],
            animation: .default)
    private var contents: FetchedResults<Content>

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ZStack {
                    Color.dvGray6
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.5)
                        .frame(height: 54)
                    VStack(spacing: 0) {
                        SearchBar(text: $searchText)
                            .padding([.leading, .trailing])
                        Divider()
                            .padding(.top)
                    }
                }
                ContentCoverList(isSharedContent: false, isEditMode: false, listOfContents: contents)
                    .navigationBarTitle("Meu Fichário", displayMode: .large)
                    .toolbar { // <2>
                        ToolbarItem(placement: .navigationBarTrailing) { // <3>
                            VStack {
                                NavigationLink(destination: AddMaterial()) {
                                    Image(systemName: "plus").foregroundColor(.dvLightPurple)
                                        .font(.system(size: 24))
                                        .padding(.top)
                                }
                                
                                UserRoundedImage(size: 34, image: Image("original"), showButton: false)
                                    .offset(x: 0, y: 24)
                            }
                        }
                    }
            }
        }
    }
}

struct MyBinderView_Previews: PreviewProvider {
    static var previews: some View {
        MyBinderView()
    }
}
