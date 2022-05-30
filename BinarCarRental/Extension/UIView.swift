//
//  UIView.swift
//  BinarCarRental
//
//  Created by Tommy Yon Prakoso on 17/04/22.
//

import UIKit

extension UIView {
  func addShadow() {
    self.layer.shadowColor = UIColor.gray.cgColor
    self.layer.shadowOffset = CGSize(width: 1, height: 1)
    self.layer.shadowOpacity = 1
  }
}
