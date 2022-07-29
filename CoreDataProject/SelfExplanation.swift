//
//  SelfExplanation.swift
//  CoreDataProject
//
//  Created by Beto Toro on 29/07/22.
//

import SwiftUI

struct Student: Hashable {
  let name: String
}

struct SelfExplanation: View {
  let students = [Student(name: "Harry Potter"), Student(name: "Hermione Granger")]
  
  var body: some View {
    List(students, id: \.self) { student in
      Text(student.name)
    }
  }
}

struct SelfExplanation_Previews: PreviewProvider {
  static var previews: some View {
    SelfExplanation()
  }
}
