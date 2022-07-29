//
//  DataControler.swift
//  CoreDataProject
//
//  Created by Beto Toro on 29/07/22.
//

import CoreData
import Foundation

class DataController: ObservableObject {
  let container = NSPersistentContainer(name: "CoreDataProject")
  
  init() {
    container.loadPersistentStores { description, error in
      if let error = error {
        print("Core Data failed to load: \(error.localizedDescription)")
      }
    }
  }
}
