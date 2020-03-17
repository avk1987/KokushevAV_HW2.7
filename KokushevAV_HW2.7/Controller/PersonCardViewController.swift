//
//  PersonCardViewController.swift
//  KokushevAV_HW2.7
//
//  Created by Александр Кокушев on 17.03.2020.
//  Copyright © 2020 Александр Кокушев. All rights reserved.
//

import UIKit

class PersonCardViewController: UIViewController {

    var person: Person!
    
    @IBOutlet var fullName: UILabel!
    @IBOutlet var eMail: UILabel!
    @IBOutlet var phone: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = person.fullName
        eMail.text = person.email
        phone.text = person.phoneNum
        
    }
}
