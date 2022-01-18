//
//  UserTableViewCell.swift
//  MVVMUsingProtocolDelegate
//
//  Created by Admin on 18/01/22.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
