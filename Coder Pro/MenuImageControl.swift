//
//  MenuImageControl.swift
//  Coder Pro
//
//  Created by Anthony on 5/6/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import UIKit

class MenuImageControl: UIImageView {
    
    override func awakeFromNib() {
        layer.cornerRadius = self.frame.size.width / 2
        clipsToBounds = true
    }
}