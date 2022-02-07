//
//  NumberView.swift
//  SB_HW3.5
//
//  Created by Vladislav Kulak on 03.02.2022.
//

import SwiftUI

struct NumberView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
                   List(persons) { person in
                       Section(person.fullName) {
                           Label(person.details[1], systemImage: "phone")
                           Label(person.details[0], systemImage: "tray")
                       }
                   }
                   .listStyle(.plain)
                   .navigationTitle("Numbers")
               }
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(persons: Person.getPersons())
    }
}
