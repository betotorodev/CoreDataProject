//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Beto Toro on 1/08/22.
//

import SwiftUI

struct FilteredList: View {
  @FetchRequest var fetchRequest: FetchedResults<Singer>
  
  init(filter: String) {
    _fetchRequest = FetchRequest<Singer>(sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH %@", filter))
  }
  
  var body: some View {
    List(fetchRequest, id: \.self) { singer in
      Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
    }
  }
}
