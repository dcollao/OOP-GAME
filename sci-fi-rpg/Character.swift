//
//  Character.swift
//  sci-fi-rpg
//
//  Created by Diego  Collao on 16-08-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import Foundation

class Character {

    private var _hp: Int = 100 //health points
    private var _ad: Int = 10 //attack damage
    
    //attack damage getter
    var ad: Int {
        get{
            return _ad
        }
    }
    
    //hp getter
    var hp: Int {
        get {
            return _hp
        }
    }
    
    //Check if the character is alive or not
    var isAlive: Bool {
        get {
            if hp <= 0{
                return false
            } else {
                return true
            }
        }
    }

    //initialicer
    init(startingHp: Int, ad: Int){
        self._hp = startingHp
        self._ad = ad
    }
    
    //attack attempt returning boolean value
    func attemptAttack(ad: Int) -> Bool {
        self._hp -= ad
        return true
    }
    
    
    
    
    
}