//
//  TableViewCell.swift
//  Flash Chat iOS13
//
//  Created by Abolfazl-Atena on 2/28/1402 AP.
//  Copyright © 1402 AP Angela Yu. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        message.numberOfLines = 0
        messageBubble.layer.cornerRadius =  5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
