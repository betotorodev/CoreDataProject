//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Beto Toro on 1/08/22.
//

import SwiftUI

enum PredicateTypes {
  case beginsWith, equal, include
}
struct FilteredList: View {
  @FetchRequest var fetchRequest: FetchedResults<Singer>
  
  init(filter: String, predicate: PredicateTypes, sortedArray: [SortDescriptor<Singer>]) {
    let predicateType: String
    switch predicate {
      case .beginsWith:
      predicateType = "BEGINSWITH"
      case .equal:
      predicateType = "=="
      case .include:
      predicateType = "IN"
    }
    _fetchRequest = FetchRequest<Singer>(sortDescriptors: sortedArray, predicate: NSPredicate(format: "lastName \(predicateType) %@", filter))
  }
  
  var body: some View {
    List(fetchRequest, id: \.self) { singer in
      Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
    }
  }
}
