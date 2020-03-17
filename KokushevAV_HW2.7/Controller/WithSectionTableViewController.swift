//
//  WithSectionTableViewController.swift
//  KokushevAV_HW2.7
//
//  Created by Александр Кокушев on 17.03.2020.
//  Copyright © 2020 Александр Кокушев. All rights reserved.
//

import UIKit

class WithSectionTableViewController: UITableViewController {

    private let persons = Person.getContactList()


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellSect", for: indexPath)
       
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = persons[indexPath.row].email
        case 1:
            cell.textLabel?.text = persons[indexPath.row].phoneNum
        default:
            break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }    
}
