//
//  PasswordVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/10/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import UIKit

class PasswordVC: UIViewController {
    
    @IBOutlet weak var enterNumberTextField: UITextField!
    @IBOutlet weak var textField: UITextField!
    let password = GeneratePassword()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func generatePassword() {
        var randomPass = ""
        if enterNumberTextField.text == "" {
            randomPass = password.generateRandomString(5)
        } else {
            randomPass = password.generateRandomString(Int(enterNumberTextField.text!)!)
        }
            textField.text = randomPass
    }
    
    @IBAction func generateRandomPasswordButtonPressed(_ sender:UIButton) {
       generatePassword()
    }
}
