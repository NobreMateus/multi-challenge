//
//  multi_challengeApp.swift
//  Shared
//
//  Created by Elias Ferreira on 11/05/21.
//

import SwiftUI

@main
struct multi_challengeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            BarController()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)

        }
    }
}
