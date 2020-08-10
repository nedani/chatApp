//
//  MessageViewCell.swift
//  chatApp
//
//  Created by neda niazalizadeh on 2020-08-10.
//  Copyright © 2020 neda niazalizadeh. All rights reserved.
//

import UIKit

class MessageViewCell: UITableViewCell {

    @IBOutlet weak var youAavtor: UIImageView!
    @IBOutlet weak var meAvator: UIImageView!
    @IBOutlet weak var bubbleView: UIView!
    @IBOutlet weak var txtMessage: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bubbleView.layer.cornerRadius = bubbleView.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
