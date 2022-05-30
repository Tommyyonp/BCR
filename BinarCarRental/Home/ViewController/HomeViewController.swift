//
//  HomeViewController.swift
//  BinarCarRental
//
//  Created by Nugi Nuryanto G on 14/04/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, favDelegate {

    @IBOutlet weak var homeTableView: UITableView!

    var car = initCar.data
    var selectedRow : Int?
  
  override func viewDidLoad() {
    super.viewDidLoad()
      homeTableView.delegate = self
      homeTableView.dataSource = self
      homeTableView.register(BannerTableViewCell.nib(), forCellReuseIdentifier: "BannerTableViewCell")
      homeTableView.register(MenuTableViewCell.nib(), forCellReuseIdentifier: "MenuTableViewCell")
      homeTableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: "NameTableViewCell")
      homeTableView.register(ListTableViewCell.nib(), forCellReuseIdentifier: "ListTableViewCell")
  }
    func convertToRupiah(_ price: Int) -> String{
            let formatter = NumberFormatter()
            formatter.locale = Locale(identifier: "id_ID")
            formatter.groupingSeparator = "."
            formatter.numberStyle = .decimal
            var results = ""
            if let rupiahFormarter = formatter.string(from: price as NSNumber) {
                results = "Rp " + rupiahFormarter + ",00"
            }
            return results
        }
}


extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        car.count + 3
      }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        navigationController?.pushViewController(detailVC, animated: true)
        detailVC.carName = car[indexPath.row - 3].name
        detailVC.carPrice = convertToRupiah(car[indexPath.row - 3].price)
        detailVC.dsc = car[indexPath.row - 3].description
        selectedRow = indexPath.row - 3
        detailVC.favorite = car[indexPath.row - 3].isFavorite
        detailVC.indexing = indexPath.row - 3
        detailVC.delegate = self
        if #available(iOS 13.0, *) {
            navigationController?.navigationItem.leftBarButtonItem?.image = UIImage(systemName: "chevron.right")
            navigationController?.navigationItem.leftBarButtonItem?.title = ""
            } else {
                    // Fallback on earlier versions
            }
    }

    func updateStar(status: Bool) {
        car[selectedRow!].isFavorite = status
        homeTableView.reloadData()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            if indexPath.row == 1 {
                return 110.0
            }
            return UITableView.automaticDimension
        }

      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
          let cell: BannerTableViewCell = tableView.dequeueReusableCell(withIdentifier: "BannerTableViewCell", for: indexPath) as! BannerTableViewCell
          cell.selectionStyle = .none
          return cell
        case 1:
            let cell: MenuTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
            cell.selectionStyle = .none
            return cell
        case 2:
          let cell: NameTableViewCell = tableView.dequeueReusableCell(withIdentifier: "NameTableViewCell", for: indexPath) as! NameTableViewCell
          cell.selectionStyle = .none
            return cell
        default:
          let cell: ListTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as! ListTableViewCell
          cell.selectionStyle = .none
          cell.carTitle.text = car[indexPath.row - 3].name
          cell.carPrice.text = convertToRupiah(car[indexPath.row - 3].price)
            if car[indexPath.row - 3].isFavorite == true {
              cell.favStar.image = UIImage (named: "ic_star_fill")
            } else {
                cell.favStar.image = UIImage (named: "ic_star")
            }
          return cell
        }
      }
    }
