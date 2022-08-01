//
//  PredicateView.swift
//  CoreDataProject
//
//  Created by Beto Toro on 1/08/22.
//

import CoreData
import SwiftUI

struct PredicateView: View {
  @Environment(\.managedObjectContext) var moc
  @FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "universe == 'Star Wars'")) var ships: FetchedResults<Ship>
  
//  NSPredicate(format: "universe == %@", "Star Wars"))
//  NSPredicate(format: "name < %@", "F"))
//  NSPredicate(format: "universe IN %@", ["Aliens", "Firefly", "Star Trek"])
//  NSPredicate(format: "name BEGINSWITH %@", "E"))
//  NSPredicate(format: "name BEGINSWITH[c] %@", "e"))
//  NSPredicate(format: "NOT name BEGINSWITH[c] %@", "e"))
  
  var body: some View {
    VStack {
      List(ships, id: \.self) { ship in
        Text(ship.name ?? "Unknown name")
      }
      
      Button("Add Examples") {
        let ship1 = Ship(context: moc)
        ship1.name = "Enterprise"
        ship1.universe = "Star Trek"
        
        let ship2 = Ship(context: moc)
        ship2.name = "Defiant"
        ship2.universe = "Star Trek"
        
        let ship3 = Ship(context: moc)
        ship3.name = "Millennium Falcon"
        ship3.universe = "Star Wars"
        
        let ship4 = Ship(context: moc)
        ship4.name = "Executor"
        ship4.universe = "Star Wars"
        
        try? moc.save()
      }
    }
  }
}

struct PredicateView_Previews: PreviewProvider {
  static var previews: some View {
    PredicateView()
  }
}
