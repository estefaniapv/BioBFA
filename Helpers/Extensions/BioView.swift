//
//  UIView+Helper.swift
//  bio-bfa-ios-framework
//
//  Created by Estefania Andrea Pairazaman Vizcarra on 8/13/20.
//  Copyright © 2020 Estefania Andrea Pairazaman Vizcarra. All rights reserved.
//

import UIKit

class BioView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup(){
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.clear.cgColor
    }
}

class View: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup(){
        self.layer.cornerRadius = self.frame.height/2
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.gray.cgColor
    }
}
