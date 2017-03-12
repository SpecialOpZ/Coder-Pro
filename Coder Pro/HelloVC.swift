//  HelloVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/6/16.
//  Copyright © 2016 appalgorithm. All rights reserved.

import UIKit

class HelloVC: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var navTitle = ""

//Listens for changes to the variable and updates label
    var textLabel:String = "" {
        didSet {
            displayLabel.text = textLabel
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel = "Hello World"
    }
    
//Checks label to see if it is set to hello world already.  If it is, change to this is great
    func updateUI() {
        if textLabel == "Hello World" {
            textLabel = "This is great!"
        } else {
            textLabel = "Hello World"
        }
    }
    
    @IBAction func chageTextButtonPressed(_ sender: UIButton) {
        updateUI()
    }
}
