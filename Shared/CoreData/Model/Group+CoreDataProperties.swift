//
//  Group+CoreDataProperties.swift
//  multi-challenge
//
//  Created by Elias Ferreira on 13/05/21.
//
//

import Foundation
import CoreData

extension Group {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Group> {
        return NSFetchRequest<Group>(entityName: "Group")
    }

    @NSManaged public var groupId: UUID?
    @NSManaged public var title: String?
    @NSManaged public var color: String?
    @NSManaged public var contents: NSSet?
    @NSManaged public var owner: User?
    @NSManaged public var participants: NSSet?

}

// MARK: Generated accessors for contents
extension Group {

    @objc(addContentsObject:)
    @NSManaged public func addToContents(_ value: Content)

    @objc(removeContentsObject:)
    @NSManaged public func removeFromContents(_ value: Content)

    @objc(addContents:)
    @NSManaged public func addToContents(_ values: NSSet)

    @objc(removeContents:)
    @NSManaged public func removeFromContents(_ values: NSSet)

}

// MARK: Generated accessors for participants
extension Group {

    @objc(addParticipantsObject:)
    @NSManaged public func addToParticipants(_ value: User)

    @objc(removeParticipantsObject:)
    @NSManaged public func removeFromParticipants(_ value: User)

    @objc(addParticipants:)
    @NSManaged public func addToParticipants(_ values: NSSet)

    @objc(removeParticipants:)
    @NSManaged public func removeFromParticipants(_ values: NSSet)

}

extension Group: Identifiable {

}
