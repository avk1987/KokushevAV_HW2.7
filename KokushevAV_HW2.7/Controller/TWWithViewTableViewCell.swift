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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
