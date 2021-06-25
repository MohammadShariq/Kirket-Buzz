//
//  PlayerTableViewCell.swift
//  Kirket Buzz
//
//  Created by Mohammad Shariq on 23/06/21.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {

    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var countryImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
