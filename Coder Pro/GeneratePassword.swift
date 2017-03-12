//
//  GeneratePassword.swift
//  Coder Pro
//
//  Created by Anthony on 5/10/16.
//  Copyright © 2016 appalgorithm. All rights reserved.
//

import Foundation

class GeneratePassword {

    fileprivate let characters:Array<Character> = Array("0123456789abcdefghijklmnopqrstuvwxyz!@#$%^&*()_+=?".characters)
    
    func generateRandomString(_ length:Int) -> String {
        var string = ""
        
        for _ in 0...length {
            string.append(generateRandomCharacter())
        }
        return string
    }
    
    func generateRandomCharacter() -> Character {
        let index = Int(arc4random_uniform(UInt32(characters.count)))
        let character = characters[index]
        return character
    }
}
