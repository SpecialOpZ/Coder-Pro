//
//  PrimeVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/10/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import UIKit

class PrimeVC: UIViewController {
    
    @IBOutlet weak var enteredNumberTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    let CONSTANT = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        enteredNumberTextField.becomeFirstResponder()
    }
    
    //Check for prime number
    func checkForPrime(_ number:String!) {
        if enteredNumberTextField.text != "" && Int(number)! % CONSTANT == 0 || Int(number)! % 3 == 0 {
            updateUI(false)
        } else {
            updateUI(true)
        }
    }
    
    //Update User Interface
    func updateUI(_ isPrime:Bool) {
        switch isPrime {
        case true:
            displayLabel.text = "\(enteredNumberTextField.text!) is a prime number."
        case false:
            displayLabel.text = "\(enteredNumberTextField.text!) is not a prime number."
        }
    }
    
    @IBAction func checkPrimeButtonPressed(_ sender: UIButton) {
        checkForPrime(enteredNumberTextField.text)
        enteredNumberTextField.text = ""
    }
}
