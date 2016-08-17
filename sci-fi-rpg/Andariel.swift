//
//  Andariel.swift
//  sci-fi-rpg
//
//  Created by Diego  Collao on 16-08-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import Foundation

class Andariel: Enemy{
    
    override var loot: [String]{
        return ["Daemon tail","Devil's Horn","Fire Shield"]
    }
    
    override var type: String{
        return "Daemon"
    }
    
}
