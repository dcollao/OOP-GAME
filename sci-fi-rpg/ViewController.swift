//
//  ViewController.swift
//  sci-fi-rpg
//
//  Created by Diego  Collao on 16-08-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Labels -->

    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var playerHp: UILabel!
    @IBOutlet weak var enemyHp: UILabel!

    //Images -->
    
    @IBOutlet weak var enemyImage: UIImageView!
    
    //Buttons -->
    
    @IBOutlet weak var chestButton: UIButton!
    
        
    // Class variables -->
        
    var player: Player!
    var enemy: Enemy!
    var lootMessage: String!
    
    //Functions
    
    func generateRandomEnemy(){
        let random = Int(arc4random_uniform(2))
        
        if random == 0{
            //Cool stuff ! -->
            enemy = Medusa(startingHp: 50, ad: 10)
        } else {
            enemy = Andariel(startingHp: 100, ad: 5)
        }
    }

    
    //Actions -->
    
    @IBAction func onChestTap(sender: AnyObject) {
        chestButton.hidden = true
        print(lootMessage)
        statusLabel.text = lootMessage
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
        
        enemyImage.hidden = false
    }
    
    @IBAction func onAttackTap(sender: UIButton) {
    
        if enemy.attemptAttack(player.ad){
            statusLabel.text = "Attacked \(enemy.type) for \(player.ad) HP"
            enemyHp.text = "\(enemy.hp) HP"
        } else {
            statusLabel.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot(){
            player.addItemToIventory(loot)
            lootMessage = "Congratulations!, \(player.name) found \(loot)"
            chestButton.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHp.text = ""
            statusLabel.text = "\(enemy.type) was killed"
            enemyImage.hidden = true
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //adding a player
        player = Player(name: "Khelevra", hp: 100, ad: 20)
        
        //generate random enemy
        generateRandomEnemy()
        
        //put the player created hp on label
        playerHp.text = "\(player.hp) HP"
     
        
    }
    

}

