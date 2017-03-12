//
//  FingersVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/10/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import UIKit

class FingersVC: UIViewController {
    
    @IBOutlet weak var enteredNumber: UITextField!
    @IBOutlet weak var guessesLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var correctNumberLabel: UILabel!
    @IBOutlet weak var incorrectNumberLabel: UILabel!
    @IBOutlet weak var resetButton: RoundedButtons!
    
    var guessArray:[Int] = []
    fileprivate var guessedNumber = Calculate()
    
//MARK: - Variables
    fileprivate var incorrectCount:Int = 0 {
        didSet {
            incorrectNumberLabel.text = incorrectCount.description
        }
    }
    
    fileprivate var correctCount:Int = 0 {
        didSet {
            correctNumberLabel.text = correctCount.description
        }
    }
    
    fileprivate var updateNumbersSelected:[Int] = [] {
        didSet {
            guessesLabel.text = updateNumbersSelected.description
        }
    }
    
    fileprivate var updateStatus:String = "You have not made a guess." {
        didSet {
            statusLabel.text = updateStatus
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        enteredNumber.becomeFirstResponder()
    }
    
    //MARK:- Helper Functions
    func checkForCorrectEntry() {
        if enteredNumber.text != "" {
            if guessedNumber.testNumber(Int(enteredNumber.text!)!) == true {
                updateUI(true)
            }else if Int(enteredNumber.text!)! < 1 || Int(enteredNumber.text!)! > 10 {
                alertHelper("Invalid Entry", message: "You must enter a number between 1 and 10")
            }else{
                updateUI(false)
            }
        }
    }
    
    func updateUI(_ status:Bool) {
        switch status {
        case true:
            print("Numbers are equal")
            correctCount += 1
            updateStatus = "Great Guess!"
        case false:
            print("Numbers are not equal")
            incorrectCount += 1
            updateStatus = "Your number \(enteredNumber.text!), My Number \(guessedNumber.newNumber)"
        }
        updateNumbersSelected.append(Int(enteredNumber.text!)!)
        enteredNumber.text = ""
        enteredNumber.resignFirstResponder()
    }
    
    func resetGame() {
        resetButton.isEnabled = true
        correctCount = 0
        incorrectCount = 0
        updateStatus = "Come on, play some more!"
        updateNumbersSelected = []
        print("Game reset")
    }
    
//MARK: - Buttons
    @IBAction func guessNumberButtonPressed(_ sender: UIButton) {
        checkForCorrectEntry()
    }
    
    @IBAction func resetGameButtonPressed(_ sender: UIButton) {
        resetGame()
    }
    
//MARK: - Alert Helper
    //MARK: - Alert Helper
    func alertHelper(_ title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
    

}
