//
//  UIButton+Helper.swift
//  bio-bfa-ios-framework
//
//  Created by Estefania Andrea Pairazaman Vizcarra on 8/13/20.
//  Copyright © 2020 Estefania Andrea Pairazaman Vizcarra. All rights reserved.
//

import UIKit

class BioButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup(){
        setCorner()
        setShadow()
    }
    
    func setCorner() {
        self.layer.cornerRadius = self.frame.height/2
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.clear.cgColor
    }
    
    func setShadow() {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
        self.layer.masksToBounds = false
    }
}

class Button: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup(){
        setCorner()
        setShadow()
    }
    
    func setCorner() {
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.clear.cgColor
    }
    
    func setShadow() {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
        self.layer.masksToBounds = false
    }
}
