//
//  ViewController.swift
//  Emojinal App
//
//  Created by Apple on 8/8/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🥚" : "Egg", "🐣" : "Hatching Egg", "🐥" : "Chick"]
    
    let customMessages = ["Egg" : ["It's okay to feel fried!", "Don't feel scrambled!"], "Hatching Egg" : ["Feeling a little cracked? Hope you have an eggcellent day ahead of you!", "Hatch into today!"], "Chick" : ["You rock, chick!", "Keep on clucking!"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
@IBAction func showMessage(sender: UIButton) {
    //an alert to pop up, show a message and be able to click "ok" to exit
    let selectedEmotion = sender.titleLabel?.text
    
    let random = Int.random(in : 0 ..< 2)
    
    let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[random]
    
    let alertController = UIAlertController(title: selectedEmotion , message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
    
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    
    present(alertController, animated: true, completion: nil)
}
}
