//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Yelena Demchenko on 18.04.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        
        if segue.identifier == "showDetails" {
            let detailsVC = segue.destination as? ContactDetailsViewController
            detailsVC?.person = person
        }
    }
}

// MARK: - UITableViewDataStore
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let contact = persons[indexPath.row]
        
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = persons[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: contact)
    }
}

