//
//  hasChangesView.swift
//  CoreDataProject
//
//  Created by Beto Toro on 29/07/22.
//

import SwiftUI

struct hasChangesView: View {
  
  @Environment(\.managedObjectContext) var moc
  
    var body: some View {
      Button("save") {
        if moc.hasChanges {
          try? moc.save()
        }
      }
    }
}

struct hasChangesView_Previews: PreviewProvider {
    static var previews: some View {
        hasChangesView()
    }
}
