//
//  BarController.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 17/05/21.
//

import SwiftUI

struct BarController: View {
    
    let mainViews = [
        Text("View Destino 1"),
        Text("View Destination 2")
    ]
    
    var body: some View {
        NavigationView {
            List{
                NavigationLink(
                    destination: mainViews[0]
                ){
                    Text("Meu Fichário")
                }
                
                NavigationLink(
                    destination: mainViews[1]
                ){
                    Text("Meus Grupos")
                }
            }.navigationTitle("Multi-Challenge")
        }
    }
}

struct BarController_Previews: PreviewProvider {
    static var previews: some View {
        BarController()
    }
}
