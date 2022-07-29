//
//  WizardView.swift
//  CoreDataProject
//
//  Created by Beto Toro on 29/07/22.
//

import SwiftUI

struct WizardView: View {
  @Environment(\.managedObjectContext) var moc
  
  @FetchRequest(sortDescriptors: []) var wizards: FetchedResults<Wizard>
  
  var body: some View {
    VStack {
      List(wizards, id: \.self) { wizard in
        Text(wizard.name ?? "Unknown")
      }
      
      Button("Add") {
        let wizard = Wizard(context: moc)
        wizard.name = "Harry Potter"
      }
      
      Button("Save") {
        do {
          try moc.save()
        } catch {
          print(error.localizedDescription)
        }
      }
    }
  }
}

struct WizardView_Previews: PreviewProvider {
  static var previews: some View {
    WizardView()
  }
}
