//
//  BannerTableViewCell.swift
//  BinarCarRental
//
//  Created by Tommy Yon Prakoso on 17/04/22.
//

import UIKit

class BannerTableViewCell: UITableViewCell {
    @IBOutlet weak var bannerTableView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func sewaMobilBtn(_ sender: Any) {
        print("Sewa Mobil")
    }
    class func nib() -> UINib { UINib(nibName: "BannerTableViewCell", bundle: nil) }
}
