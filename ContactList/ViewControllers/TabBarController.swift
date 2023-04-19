//
//  TabBarController.swift
//  ContactList
//
//  Created by Yelena Demchenko on 19.04.2023.
//

import UIKit

class TabBarController: UITabBarController {

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let persons = Person.getContactList()
        
        transferData(from: persons)
    }
    
    // MARK: - Navigation
    private func transferData(from persons: [Person]) {
        let contactListVC = viewControllers?.first as? ContactListViewController
        let expandedContactListVC = viewControllers?.last as? ExpandedContactListViewController
        
        contactListVC?.persons = persons
        expandedContactListVC?.persons = persons
    }
}
