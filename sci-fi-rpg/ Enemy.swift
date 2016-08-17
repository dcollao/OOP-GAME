 //
//   Enemy.swift
//  sci-fi-rpg
//
//  Created by Diego  Collao on 16-08-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import Foundation

 class Enemy: Character {
    
    //Enemyes have loot -->
    var loot: [String] {
        return ["Broken glass","Hamburger"]
    }
    
    var type: String {
        return "Witch"
    }
    //Add ? to say "This going to have something OR NOT?"
    func dropLoot() -> String? {
        
        if !isAlive{
            //arc4random need to transform value to UInt32
            let random = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[random] //Grab what ever number... and return that string
        } else {
            return nil //<--
        }
    }
    
 }