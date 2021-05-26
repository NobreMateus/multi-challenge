//
//  GroupRepository.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 25/05/21.
//

import Foundation

class GroupRepository {

    let context = PersistenceController.shared.container.viewContext

    func create(title: String, color: String) -> Group {
        let group = Group(context: self.context)
        group.groupId = UUID()
        group.title = title
        group.color = color
        save()

        return group
    }

    func fetch() -> [Group] {
        var groups = [Group]()
        do {
            groups = try context.fetch(Group.fetchRequest())
        } catch {
            print(error)
        }
        return groups
    }

    func update(group: Group, title: String, color: String) -> Group {
        group.title = title
        group.color = color
        save()
        return group
    }

    func delete(group: Group) {
        context.delete(group)
        save()
    }

    func save() {
        PersistenceController.shared.saveContext()
    }
}
