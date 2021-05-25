//
//  ContentRepository.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 25/05/21.
//

import Foundation
import CoreData

class ContentRepository {
    let context = PersistenceController.shared.container.viewContext

    func create(title: String, body: String, contentType: String, color: String) -> Content {
        let content = Content(context: self.context)
        content.contentId = UUID()
        content.title = title
        content.body = body
        content.contentType = contentType
        content.color = color
        content.createdDate = Date()
        save()

        return content
    }

    func fetch() -> [Content] {
        var contents = [Content]()
        do {
            contents = try context.fetch(Content.fetchRequest())
        } catch {
            print(error)
        }
        return contents
    }

    func update(content: Content, title: String, body: String, contentType: String, color: String) -> Content {
        content.title = title
        content.body = body
        content.contentType = contentType
        content.color = color
        content.createdDate = Date()
        save()
        return content
    }

    func delete(content: Content) {
        context.delete(content)
        save()
    }

    func save() {
        PersistenceController.shared.saveContext()
    }
}
