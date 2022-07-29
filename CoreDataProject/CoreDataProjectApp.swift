//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Beto Toro on 29/07/22.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
  
  @StateObject private var dataController = DataController()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(\.managedObjectContext, dataController.container.viewContext)
    }
  }
}
