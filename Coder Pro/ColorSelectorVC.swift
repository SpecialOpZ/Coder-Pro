//
//  ColorSelectorVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/10/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import UIKit

class ColorSelectorVC: UIViewController {
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var alphaTextField: UITextField!
    
    let STRING_FORMAT = String.localizedStringWithFormat
    
    var red:CGFloat = 0.0 {
        didSet {
            redTextField.text = STRING_FORMAT("%.f", red * 255)
        }
    }
    
    var green:CGFloat = 0.0 {
        didSet {
            greenTextField.text = STRING_FORMAT("%.f", green * 255)
        }
    }
    
    var blue:CGFloat = 0.0 {
        didSet {
            blueTextField.text = STRING_FORMAT("%.f", blue * 255)
        }
    }
    
    var alpha:CGFloat = 1 {
        didSet {
            alphaTextField.text = STRING_FORMAT("%.2f", alpha)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func updateUI() {
        let currentColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: self.alpha)
        view.backgroundColor = currentColor
    }
    
    @IBAction func redSliderMoved(_ sender: UISlider) {
        red = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func greenSliderMoved(_ sender: UISlider) {
        green = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func blueSliderMoved(_ sender: UISlider) {
        blue = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func alphaSliderMoved(_ sender: UISlider) {
        alpha = CGFloat(sender.value)
        updateUI()
    }
}
