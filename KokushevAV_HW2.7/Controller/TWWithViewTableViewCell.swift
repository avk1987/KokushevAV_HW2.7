//
//  TWWithViewTableViewCell.swift
//  KokushevAV_HW2.7
//
//  Created by Александр Кокушев on 17.03.2020.
//  Copyright © 2020 Александр Кокушев. All rights reserved.
//

import UIKit

class TWWithViewTableViewCell: UITableViewCell {
    
    @IBOutlet var avatar: UIImageView!
    @IBOutlet var fullname: UILabel!
    
    var person: Person!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        fullname.text = person.fullName
        avatar.image = UIImage(named: person.avatar)
        avatar.layer.cornerRadius = avatar.frame.height / 2
        avatar.clipsToBounds = true
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
