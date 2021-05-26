//
//  BarController.swift
//  multi-challenge
//
//  Created by Mateus Nobre on 17/05/21.
//

import SwiftUI

struct BarController: View {
    
    let persistenceController = PersistenceController.shared
    
    let mainViews = [
        MaterialView(),
        MaterialView()
    ]
    
    @State var isPresented: Bool = true
    
    var body: some View {
        #if os(macOS)
            NavigationView {
                List {
                    NavigationLink(
                        destination: ContentView()
                            .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    ) {
                        Text("Meu Fichário")
                    }
                    
                    NavigationLink(
                        destination: ViewSummary()
                            .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    ) {
                        Text("Meus Grupos")
                    }.accentColor(.green)
                    
                }.navigationTitle("Multi-Challenge")
                .frame(minWidth: 200)
            }
        #else
            TabView {

                MyBinderView()

                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tag(0)
                    .tabItem {
                        Image(systemName: "doc.text")
                        Text("Meu Fichário")
                    }
                Groups()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tag(1)
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Grupos")
                    }
            }
        #endif
    }
}

struct BarController_Previews: PreviewProvider {
    static var previews: some View {
        BarController()
    }
}
