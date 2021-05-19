//
//  MyBinderView.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 18/05/21.
//

import SwiftUI
import UIKit

struct MyBinderView: View {

    var body: some View {
        NavigationView {
            VStack {
                Text("teste")
                ContentCoverList(isSharedContent: true, isEditMode: false)
                    .navigationBarTitle("Meu Fichário", displayMode: .large)
                    //.navigationBarItems(trailing: Image(systemName: "plus").foregroundColor(.dvLightPurple))
                    .toolbar { // <2>
                        ToolbarItem(placement: .navigationBarTrailing) { // <3>
                            VStack {
                                Button(action: {}, label: {
                                    Image(systemName: "plus").foregroundColor(.dvLightPurple)
                                        .font(.system(size: 24))
                                        .padding(.top)
                                })
                                UserRoundedImage(size: 34, image: UIImage(named: "original")!, showButton: false)
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
