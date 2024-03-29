//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Reid Weber on 1/12/15.
//  Copyright (c) 2015 Reid Weber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchButton: UISwitch!
    var switchState = true
    let switchKey = "switchState"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveButtonPressed(sender: AnyObject) {
        if self.switchButton.on {
            self.switchState = true
            NSUserDefaults.standardUserDefaults().setBool(self.switchState, forKey: switchKey)
            NSUserDefaults.standardUserDefaults().synchronize()
            println(NSUserDefaults.standardUserDefaults().boolForKey(switchKey))
        } else {
            self.switchState = false
            NSUserDefaults.standardUserDefaults().setBool(self.switchState, forKey: switchKey)
            NSUserDefaults.standardUserDefaults().synchronize()
            println(NSUserDefaults.standardUserDefaults().boolForKey(switchKey))
        }
    }

}

