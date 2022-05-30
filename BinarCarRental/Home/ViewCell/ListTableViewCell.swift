//
//  ListTableViewCell.swift
//  BinarCarRental
//
//  Created by Tommy Yon Prakoso on 17/04/22.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var listTableView: UIView!
    @IBOutlet weak var carTitle: UILabel!
    @IBOutlet weak var carPrice: UILabel!
    @IBOutlet weak var favStar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }
    class func nib() -> UINib { UINib(nibName: "ListTableViewCell", bundle: nil) }
}
