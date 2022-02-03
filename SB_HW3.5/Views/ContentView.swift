//
//  ContentView.swift
//  SB_HW3.5
//
//  Created by Vladislav Kulak on 03.02.2022.
//

import SwiftUI

struct ContentView: View {
    let personsInforamtion = Person.getPersons()
    
    var body: some View {
        TabView {
            ContactView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumberView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
