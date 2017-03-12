//  GesturesVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/15/16.
//  Copyright © 2016 appalgorithm. All rights reserved.

import UIKit

class GesturesVC: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var swipeGestureLabel: UILabel!
    @IBOutlet weak var lgGestureBox: UIView!
    
    var number:Int = 0 {
        didSet {
            numberLabel.text = number.description
        }
    }
    
    var swipe:String = "" {
        didSet {
            swipeGestureLabel.text = swipe
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func longGesturePressed(_ sender: UILongPressGestureRecognizer) {
        lgGestureBox.backgroundColor = UIColor.blue
    }

    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        number += 1
    }
    
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        swipe = "Up"
    }
    
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        swipe = "Down"
    }
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        swipe = "Left"
    }
    
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        swipe = "Right"
    }
    
    
}
