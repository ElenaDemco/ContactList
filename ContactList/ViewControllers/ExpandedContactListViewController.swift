//
//  PersonContactListViewController.swift
//  ContactList
//
//  Created by Yelena Demchenko on 18.04.2023.
//

import UIKit

final class ExpandedContactListViewController: UITableViewController {
    
    // MARK: - Public properties
    var persons: [Person] = []
    
    // MARK: - UITableViewDelegate
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - TableViewDataStore
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = contact.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = contact.email
            content.image = UIImage(systemName: "tray")
        }
        cell.contentConfiguration = content
        return cell
    }
}


