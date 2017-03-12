//  CatAgeVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/9/16.
//  Copyright © 2016 appalgorithm. All rights reserved.

import UIKit

class CatAgeVC: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var enterAgeTextfield: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    //Update age label with the calculation
    var ageLabel:Int = 0 {
        didSet {
            displayLabel.text = "You cat is \(String(ageLabel)) in human years."
        }
    }
    
    //Update the image for cat age
    var imageForCatAge:String = "" {
        didSet {
            image.image = UIImage(named: imageForCatAge)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        enterAgeTextfield.placeholder = "Enter cat age in years"
        enterAgeTextfield.becomeFirstResponder()
        enterAgeTextfield.textAlignment = .center
        enterAgeTextfield.keyboardType = .numberPad
        enterAgeTextfield.becomeFirstResponder()
    }
    
    //15 years for first year
    //10 years for second year
    //4 years for every year after
    //Updates image
    func calculateAge(_ value:String) {
        if value != "" {
            let newValue = Int(value)!
            if newValue == 1 {
                ageLabel = 15
                imageForCatAge = "cat1"
            } else if newValue == 2 {
                ageLabel = 25
                imageForCatAge = "cat2"
            } else if newValue > 2 {
                ageLabel = 25 + (newValue * 4)
                imageForCatAge = "cat3"
            }
        } else {
            print("No age was entered.")
        }
    }
    
    @IBAction func calculateAgeButtonPressed(_ sender: UIButton) {
        calculateAge(enterAgeTextfield.text!)
        enterAgeTextfield.resignFirstResponder()
        enterAgeTextfield.text = ""
    }
}
