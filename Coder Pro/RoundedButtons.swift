//
//  RoundedButtons.swift
//  Coder Pro
//
//  Created by Anthony on 5/10/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import UIKit

class RoundedButtons: UIButton {
    
    override func awakeFromNib() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 25
        layer.shadowRadius = 2.0
        layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        layer.cornerRadius = 50
    }
}
