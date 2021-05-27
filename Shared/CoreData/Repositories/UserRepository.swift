//
//  UserRepository.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 25/05/21.
//

import SwiftUI
import CoreData

class UserRepository {
    let context = PersistenceController.shared.container.viewContext

    func create(username: String, color: String) -> User {
        let user = User(context: self.context)
        user.username = username
        user.userId = UUID()
        user.color = color
        save()

        return user
    }

    func save() {
        PersistenceController.shared.saveContext()
    }

}
