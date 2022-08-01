//
//  Singer+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Beto Toro on 1/08/22.
//
//

import Foundation
import CoreData


extension Singer {
  
  @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
    return NSFetchRequest<Singer>(entityName: "Singer")
  }
  
  @NSManaged public var lastName: String?
  @NSManaged public var firstName: String?
  
}

extension Singer : Identifiable {
  
}
