//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Yelena Demchenko on 18.04.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private let contactList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = contactList[indexPath.row]
        let detailsVC = segue.destination as? ContactDetailsViewController
        detailsVC?.person = person
    }
}

extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        content.text = contact.name
        content.secondaryText = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
