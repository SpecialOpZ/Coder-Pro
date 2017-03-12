//
//  TempVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/10/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import UIKit

class TempVC: UIViewController {

    @IBOutlet weak var tempDisplayLabel: UILabel!
    @IBOutlet weak var enteredTempTextField: UITextField!
    @IBOutlet weak var tempSelector: UISwitch!
    
    var convertTo = "C"
    var updateDisplay:String = "" {
        didSet {
            tempDisplayLabel.text = updateDisplay
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func convertTemp(_ degree:String, number:Double) {
        switch degree {
        case "C":
            updateDisplay = "\(String((number - 32) * 5/9)) ºC"
            print("Celcius")
        case "F":
            updateDisplay = "\(String((number * 9/5) + 32)) ºF"
            print("Fahrenheit")
        default:
            break
        }
    }
    
    @IBAction func tempSelector(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
            convertTo = "F"
        case false:
            convertTo = "C"
        }
    }

    @IBAction func convertTempButtonPressed(_ sender: UIButton) {
        if enteredTempTextField.text != "" {
            convertTemp(convertTo, number: Double(enteredTempTextField.text!)!)
        }
    }
}
