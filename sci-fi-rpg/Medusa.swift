//
//  Witch.swift
//  sci-fi-rpg
//
//  Created by Diego  Collao on 16-08-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import Foundation

class Medusa: Enemy {

    //Special skills -->
    let immuneMax = 15
    
    //polymorphism
    override var loot: [String] {
        return ["Witch head","Snake knife","Mana potion"]
    }
    
    override var type: String {
        return "Witch"
    }
    
    override func attemptAttack(ad: Int) -> Bool {
        //If attack-damage is >= I can call super.attemptAttack to still usying untouched code
        if ad >= immuneMax{
            return super.attemptAttack(ad)
        } else {
            return false
        }
    }
    
}