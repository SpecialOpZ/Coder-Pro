//  ViewController.swift
//  Coder Pro
//
//  Created by Anthony on 5/6/16.
//  Copyright © 2016 appalgorithm. All rights reserved.

import UIKit

class MenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var menuArray:[MenuStruct] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let td = MenuData()
        menuArray = td.addToArray()
        
        let nav = self.navigationController?.navigationBar
        nav?.titleTextAttributes = [NSForegroundColorAttributeName: DARK_BLUE_COLOR, NSFontAttributeName: UIFont(name: "Avenir Next", size: 28)!]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
            case "Hello World":
                print("Hello")
            case "Cat Age":
                print("Cat")
            case "How Many Fingers?":
                print("How Many Fingers?")
            case "Temp Convert":
                print("Temperature Converter")
            case "Pass Generator":
                print("Pass Generator")
            case "Color Selector":
                print("Color Selector")
            case "Gesture Recognizers":
                print("Gesture Recognizers")
            default:
                break
        }
        updateStatus(String(segue.identifier!))
    }

func updateStatus(_ status:String) {
    print(status)
}
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTVC
        let tableData = menuArray[indexPath.row]
        
        cell.updateCell(tableData.title, desc: tableData.desc, img: tableData.img)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        performSegue(withIdentifier: menuArray[indexPath.row].title, sender: self)
    }
}
