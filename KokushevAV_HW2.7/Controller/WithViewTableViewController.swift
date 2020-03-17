//
//  TableViewController.swift
//  KokushevAV_HW2.7
//
//  Created by Александр Кокушев on 17.03.2020.
//  Copyright © 2020 Александр Кокушев. All rights reserved.
//

import UIKit

class WithViewTableViewController: UITableViewController {

    private let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellOnlyTitle", for: indexPath) as! TWWithViewTableViewCell
        cell.fullname.text = persons[indexPath.row].fullName
        cell.avatar.image = UIImage(named: persons[indexPath.row].avatar)
        cell.avatar.layer.cornerRadius = cell.avatar.frame.height / 2
        cell.imageView?.clipsToBounds = true

        
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personCardVC = segue.destination as! PersonCardViewController
        
        personCardVC.person = persons[indexPath.row]
        
    }

}
