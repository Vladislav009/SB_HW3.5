//
//  ContactsDetailView.swift
//  SB_HW3.5
//
//  Created by Vladislav Kulak on 03.02.2022.
//

import SwiftUI

struct ContactDetailView: View {
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .alignmentGuide(HorizontalAlignment.center, computeValue: { d in d.width/2 })
                .padding()
            Label(person.details[1], systemImage: "phone")
            Label(person.details[0], systemImage: "tray")
        }
        .navigationTitle(person.fullName)
        .customBackButton(title: "Back")
    }
}

struct ContactsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(person: Person.getPerson())
    }
}
