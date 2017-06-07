//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by the Luckiest on 6/7/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        if emoji == "🐹" {
           definitionLabel.text = "A cute Hamster!" 
        }
        
        if emoji == "😎" {
            definitionLabel.text = "A dude with sunglasses!"
        }
        
        if emoji == "🤑" {
            definitionLabel.text = "A dude who loves money!"
        }
        
        if emoji == "🐚" {
            definitionLabel.text = "A something from the sea!"
        }
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
