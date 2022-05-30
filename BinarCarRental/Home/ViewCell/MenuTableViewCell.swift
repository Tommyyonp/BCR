//
//  MenuTableViewCell.swift
//  BinarCarRental
//
//  Created by Tommy Yon Prakoso on 17/04/22.
//

import UIKit

class MenuTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var arrayIcon : [icon] = [icon(iconName: "ic_truck", iconTitle: "Sewa Mobil"), icon(iconName: "ic_box", iconTitle: "Oleh-Oleh"), icon(iconName: "ic_key", iconTitle: "Penginapan"), icon(iconName: "ic_camera", iconTitle: "Wisata")]

    @IBOutlet weak var MenuCollectionView: UICollectionView!

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MenuCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCollectionViewCell", for: indexPath) as! MenuCollectionViewCell
        cell.iconMenu.image = UIImage (named: arrayIcon[indexPath.row].iconName)
        cell.titleMenu.text = arrayIcon[indexPath.row].iconTitle
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (MenuCollectionView.frame.size.width - 48) / 4
        let height = 3 / 3 * width
        return CGSize(width: width, height: height)
           }


    override func awakeFromNib() {
        super.awakeFromNib()
        MenuCollectionView.delegate = self
        MenuCollectionView.dataSource = self
        MenuCollectionView.register(MenuCollectionViewCell.nib(), forCellWithReuseIdentifier: "MenuCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    class func nib() -> UINib { UINib(nibName: "MenuTableViewCell", bundle: nil) }
}
