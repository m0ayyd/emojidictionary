//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Master on 6/5/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var macooltableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        macooltableview.dataSource = self
        macooltableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji : Emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.catgory = "Smily"
        emoji1.definition = "A smiley face with sunglasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤑"
        emoji2.birthYear = 2012
        emoji2.catgory = "Smily"
        emoji2.definition = "A smiley face who likes money"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐹"
        emoji3.birthYear = 2008
        emoji3.catgory = "Animal"
        emoji3.definition = "A cute Hamster!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐚"
        emoji4.birthYear = 2010
        emoji4.catgory = "Things"
        emoji4.definition = "A something from the sea!"
        
        return [emoji1, emoji2, emoji3, emoji4]
    }


}

