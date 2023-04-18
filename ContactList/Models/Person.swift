//
//  Person.swift
//  ContactList
//
//  Created by Yelena Demchenko on 18.04.2023.
//

struct Person {
    
    let name: String
    let surname: String
    
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        let person: [Person] = []
        
        let names = DataStore.info.names.shuffled()
        let surnames = DataStore.info.surnames.shuffled()
        let phones = DataStore.info.phones.shuffled()
        let emails = DataStore.info.emails.shuffled()
        return person
    }
}


