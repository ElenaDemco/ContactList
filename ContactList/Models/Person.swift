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
        var person: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        for i in 0..<names.count {
            let newPerson = Person(
                name: names[i],
                surname: surnames[i],
                phone: phones[i],
                email: emails[i]
            )
            person.append(newPerson)
        }
        return person
    }
}

