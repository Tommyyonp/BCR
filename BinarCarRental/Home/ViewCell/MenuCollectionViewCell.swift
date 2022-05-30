//
//  MenuCollectionViewCell.swift
//  BinarCarRental
//
//  Created by Tommy Yon Prakoso on 17/04/22.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var iconMenu: UIImageView!
    @IBOutlet weak var titleMenu: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    class func nib() -> UINib { UINib(nibName: "MenuCollectionViewCell", bundle: nil) }
}
