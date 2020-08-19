//
//  SlideView.swift
//  bio-bfa-ios-framework
//
//  Created by Estefania Andrea Pairazaman Vizcarra on 8/12/20.
//  Copyright © 2020 Estefania Andrea Pairazaman Vizcarra. All rights reserved.
//

import UIKit

class SlideView: UIView {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.setBorder()
    }
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
