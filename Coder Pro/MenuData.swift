//
//  MenuData.swift
//  Coder Pro
//
//  Created by Anthony on 5/6/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import Foundation

class MenuData {
    
    let helloWorld = MenuStruct(title: "Hello World", desc: "Simple button play.", img: "hw")
    let catAge = MenuStruct(title: "Cat Age", desc: "Find the age of your cat", img: "cat1")
    let fingers = MenuStruct(title: "How Many Fingers?", desc: "Classic guessing game.", img: "fingers")
    let primes = MenuStruct(title: "Is It Prime", desc: "Find out if your number is prime.", img: "prime")
    let temp = MenuStruct(title: "Temp Convert", desc: "Convert ºC or ºF", img: "therm")
    let password = MenuStruct(title: "Pass Generator", desc: "Create a strong Password", img: "pass")
    let color = MenuStruct(title: "Color Selector", desc: "Use sliders to select color", img: "color")
    let tip = MenuStruct(title: "Tip Calculator", desc: "Calculate the tip", img: "tip")
    let gestures = MenuStruct(title: "Gesture Recognizers", desc: "Play with gestures", img: "gesture")
    
    init() {
    }
    
    func addToArray() -> [MenuStruct] {
       let tempArray = [helloWorld, catAge, fingers, primes, temp, password, color, tip, gestures]
        return tempArray
    }
}