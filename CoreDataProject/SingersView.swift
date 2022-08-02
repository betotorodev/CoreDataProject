//
//  SingersView.swift
//  CoreDataProject
//
//  Created by Beto Toro on 1/08/22.
//

import SwiftUI

struct SingersView: View {
  @Environment(\.managedObjectContext) var moc
  @State private var lastNameFilter = "A"
  
  var body: some View {
    VStack {
      FilteredList(filter: lastNameFilter, predicate: .beginsWith)
      
      Button("Add Examples") {
        let taylor = Singer(context: moc)
        taylor.firstName = "Taylor"
        taylor.lastName = "Swift"
        
        let ed = Singer(context: moc)
        ed.firstName = "Ed"
        ed.lastName = "Sheeran"
        
        let adele = Singer(context: moc)
        adele.firstName = "Adele"
        adele.lastName = "Adkins"
        
        try? moc.save()
      }
      
      Button("Show A") {
        lastNameFilter = "A"
      }
      
      Button("Show S") {
        lastNameFilter = "S"
      }
    }
  }
}

struct SingersView_Previews: PreviewProvider {
  static var previews: some View {
    SingersView()
  }
}

