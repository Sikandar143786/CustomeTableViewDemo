//
//  CustomeTableViewCell.swift
//  CustomeTableViewDemo
//
//  Created by Akash Technolabs on 03/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class CustomeTableViewCell: UITableViewCell
{

    @IBOutlet weak var CustomeImageView: UIImageView!
    
    @IBOutlet weak var lblTitleText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
