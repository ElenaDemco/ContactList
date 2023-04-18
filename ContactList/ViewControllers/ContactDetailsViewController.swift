//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Yelena Demchenko on 18.04.2023.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    
    @IBOutlet var phonePerson: UILabel!
    @IBOutlet var emailPerson: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        
        phonePerson.text = "Phone: \(person.phone)"
        emailPerson.text = "E-mail: \(person.email)"
    }
}
