//
//  Content+CoreDataProperties.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 13/05/21.
//
//

import Foundation
import CoreData

extension Content {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Content> {
        return NSFetchRequest<Content>(entityName: "Content")
    }

    @NSManaged public var body: String?
    @NSManaged public var contentId: UUID?
    @NSManaged public var contentType: String?
    @NSManaged public var createdDate: Date?
    @NSManaged public var title: String?
    @NSManaged public var color: String?
    @NSManaged public var group: Group?
    @NSManaged public var owner: User?

}

extension Content: Identifiable {

}
