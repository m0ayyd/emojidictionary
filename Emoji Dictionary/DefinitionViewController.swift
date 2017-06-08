//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by the Luckiest on 6/7/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = Emoji()
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var catgoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "OrginationDate: \(emoji.birthYear)"
        catgoryLabel.text = "Catgory: \(emoji.catgory)"
        definitionLabel.text = emoji.definition
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
