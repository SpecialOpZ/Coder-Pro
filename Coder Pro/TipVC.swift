//
//  TipVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/15/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import UIKit

class TipVC: UIViewController {
    
    @IBOutlet weak var totalBillEntryTextField: UITextField!
    @IBOutlet weak var peopleSplitTextField: UITextField!
    @IBOutlet weak var tipStepper: UIStepper!
    
    @IBOutlet weak var percentTipDisplayLabel: UILabel!
    @IBOutlet weak var totalBillDisplayLabel: UILabel!
    @IBOutlet weak var eachPersonBillDisplayLabel: UILabel!
    
    var tipValue:Double = 0 {
        didSet {
            percentTipDisplayLabel.text = "\(tipValue * 100)%"
        }
    }
    
    var splitValue:Double = 0 {
        didSet {
            eachPersonBillDisplayLabel.text = String.localizedStringWithFormat("%.02f %@", splitValue, "")
        }
    }
    
    var totalBill:Double = 0 {
        didSet {
            totalBillDisplayLabel.text = String.localizedStringWithFormat("%.02f %@", totalBill, "")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        percentTipDisplayLabel.text = "0"
    }
    
    func calculateTipAmount(_ total:Double, people:Int?, tip:Double?) {
        if people != nil {
            splitValue = ((total * tip!) + total) / Double(people!)
            totalBill = ((total * tip!) + total)
        } else {
            totalBill = ((total * tip!) + total)
        }
    }
    
    func updateCalculation() {
        if totalBillEntryTextField.text != "" {
            calculateTipAmount(Double(totalBillEntryTextField.text!)!, people: Int(peopleSplitTextField.text!), tip: tipValue)
        }
    }
    
    @IBAction func stepperTapped(_ sender: UIStepper) {
        tipValue = sender.value
    }
    
    @IBAction func calculateTipButtonPressed(_ sender: UIButton) {
        updateCalculation()
    }
}
