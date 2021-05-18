//
//  multi_challengeApp.swift
//  Shared
//
//  Created by Elias Ferreira on 11/05/21.
//

import SwiftUI

@main
struct MultiChallengeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            BarController()
        }
    }
}
