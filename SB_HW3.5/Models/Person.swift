//
//  Person.swift
//  SB_HW3.5
//
//  Created by Vladislav Kulak on 03.02.2022.
//

import Foundation


struct Person {
    let name: String
    let surname: String
    let details: [String]
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.nameList.shuffled()
        let surnames = DataManager.shared.surnameList.shuffled()
        let emails = DataManager.shared.emailList.shuffled()
        let phones = DataManager.shared.phoneList.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                details: [
                    emails[index],
                    phones[index]
                ]
            )
            
            persons.append(person)
        }
        
        return persons
        
    }
    
    static func getPerson() -> Person {
        return Person(
            name: DataManager.shared.nameList[0],
            surname: DataManager.shared.surnameList[0],
            details: [
                DataManager.shared.emailList[0],
                DataManager.shared.phoneList[0]
            ]
        )
    }
}
