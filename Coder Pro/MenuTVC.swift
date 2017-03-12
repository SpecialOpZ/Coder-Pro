//
//  MenuTVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/6/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import UIKit

class MenuTVC: UITableViewCell {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var menuImg: UIImageView!
    
     func updateCell(_ title:String, desc:String, img:String) {
        self.titleLbl.text = title
        self.descLbl.text = desc
        self.menuImg.image = UIImage(named: img)
    }
}
