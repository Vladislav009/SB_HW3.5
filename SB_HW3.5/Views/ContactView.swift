//
//  ContactsView.swift
//  SB_HW3.5
//
//  Created by Vladislav Kulak on 03.02.2022.
//

import SwiftUI

struct ContactView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons){ person in
                NavigationLink(person.fullName){
                    ContactDetailView(person: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(persons: Person.getPersons())
    }
}
