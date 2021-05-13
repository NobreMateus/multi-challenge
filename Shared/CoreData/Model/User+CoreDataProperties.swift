//
//  User+CoreDataProperties.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 13/05/21.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var userId: UUID?
    @NSManaged public var username: String?
    @NSManaged public var imagePath: String?
    @NSManaged public var contents: NSSet?
    @NSManaged public var groups: NSSet?
    @NSManaged public var goupsOwned: NSSet?

}

// MARK: Generated accessors for contents
extension User {

    @objc(addContentsObject:)
    @NSManaged public func addToContents(_ value: Content)

    @objc(removeContentsObject:)
    @NSManaged public func removeFromContents(_ value: Content)

    @objc(addContents:)
    @NSManaged public func addToContents(_ values: NSSet)

    @objc(removeContents:)
    @NSManaged public func removeFromContents(_ values: NSSet)

}

// MARK: Generated accessors for groups
extension User {

    @objc(addGroupsObject:)
    @NSManaged public func addToGroups(_ value: Group)

    @objc(removeGroupsObject:)
    @NSManaged public func removeFromGroups(_ value: Group)

    @objc(addGroups:)
    @NSManaged public func addToGroups(_ values: NSSet)

    @objc(removeGroups:)
    @NSManaged public func removeFromGroups(_ values: NSSet)

}

// MARK: Generated accessors for goupsOwned
extension User {

    @objc(addGoupsOwnedObject:)
    @NSManaged public func addToGoupsOwned(_ value: Group)

    @objc(removeGoupsOwnedObject:)
    @NSManaged public func removeFromGoupsOwned(_ value: Group)

    @objc(addGoupsOwned:)
    @NSManaged public func addToGoupsOwned(_ values: NSSet)

    @objc(removeGoupsOwned:)
    @NSManaged public func removeFromGoupsOwned(_ values: NSSet)

}

extension User : Identifiable {

}
