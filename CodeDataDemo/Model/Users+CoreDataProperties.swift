//
//  Users+CoreDataProperties.swift
//  CodeDataDemo
//
//  Created by Ryan on 2022/03/28.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var id: Int64
    @NSManaged public var age: Int64
    @NSManaged public var devices: [String]?
    @NSManaged public var name: String?
    @NSManaged public var signupDate: Date?

}

extension Users : Identifiable {

}
