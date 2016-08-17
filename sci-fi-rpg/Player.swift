//
//  Player.swift
//  sci-fi-rpg
//
//  Created by Diego  Collao on 16-08-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player" //<-- Default value
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]() //<-- Inventory of player
    
    var inventory: [String] {
        return _inventory
    }
    
    //Adding function to add items to the inventory
    func addItemToIventory(item: String){
        _inventory.append(item)
    }
    
    
    convenience init(name: String, hp: Int, ad: Int){
        self.init(startingHp: hp, ad: ad)
        _name = name
    }
}