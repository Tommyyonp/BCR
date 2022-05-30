//
//  NameTableViewCell.swift
//  BinarCarRental
//
//  Created by Tommy Yon Prakoso on 17/04/22.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    @IBOutlet weak var NameTableView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    class func nib() -> UINib { UINib(nibName: "NameTableViewCell", bundle: nil) }
}
