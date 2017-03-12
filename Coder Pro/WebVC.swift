//
//  WebVC.swift
//  Coder Pro
//
//  Created by Anthony on 5/14/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import UIKit
import WebKit

class WebVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var webWindow: UIWebView!
    @IBOutlet weak var searchField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webWindow.loadRequest(URLRequest(url: URL(string: "http://www.google.com")!))
        searchField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func runRequest(_ url: String) {
            webWindow.loadRequest(URLRequest(url: URL(string: url)!))
    }
    
    @IBAction func searchButton(_ sender: UIButton) {
        runRequest("www.aimappdesign.com")
    }

    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        webWindow.goBack()
    }
    
    @IBAction func refreshButtonPressed(_ sender: UIBarButtonItem) {
        webWindow.reload()
    }
    
    @IBAction func forwardButtonPressed(_ sender: UIBarButtonItem) {
        webWindow.goForward()
    }
}
