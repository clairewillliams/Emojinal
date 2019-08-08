//
//  ViewController.swift
//  Emojinal App
//
//  Created by Apple on 8/8/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
@IBAction func showMessage(sender: UIButton) {
    //an alert to pop up, show a message and be able to click "ok" to exit
    let alertController = UIAlertController(title: "Egg", message: "It's okay to feel fried!", preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    present(alertController, animated: true, completion: nil)
}
}
