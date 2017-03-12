//  MenuStruct.swift
//  Coder Pro
//  Created by Anthony on 5/6/16.
//  Copyright © 2016 appalgorithm. All rights reserved.

import Foundation

struct MenuStruct {
    
    var title = ""
    var desc = ""
    var img = ""
    
    init(title:String, desc:String, img:String) {
        self.title = title
        self.desc = desc
        self.img = img
    }
}