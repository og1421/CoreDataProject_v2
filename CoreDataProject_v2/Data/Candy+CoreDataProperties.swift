//
//  Candy+CoreDataProperties.swift
//  CoreDataProject_v2
//
//  Created by Orlando Moraes Martins on 22/12/22.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?
    
    public var unwrappedName: String {
        name ?? "Unknown"
    }
}

extension Candy : Identifiable {

}
