//
//  ViewController.swift
//  HelloSwift
//
//  Created by Peter Shearer on 5/11/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var displayLabel: UILabel!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonWasClicked(sender: UIButton) {
        
        counter += 1
        
        displayLabel.text = "You have clicked me \(counter) time(s)"
        
    }
    
}

