//
//  UILabel.swift
//  OnlineChecker
//
//  Created by Максим Фомичев on 06.10.2021.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont?, aligment: NSTextAlignment = .left) {
        self.init()
        self.text = text
        self.font = font
        self.textColor = .black
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
