//
//  UIImageView+Helper.swift
//  bio-bfa-ios-framework
//
//  Created by Estefania Andrea Pairazaman Vizcarra on 8/13/20.
//  Copyright © 2020 Estefania Andrea Pairazaman Vizcarra. All rights reserved.
//

import UIKit

extension UIImageView {
    func setBorder() {
        self.layer.cornerRadius = self.frame.size.width/2
        self.clipsToBounds = true
        self.layer.borderWidth = 3.0
        self.layer.borderColor = UIColor.gray.cgColor
    }
}
