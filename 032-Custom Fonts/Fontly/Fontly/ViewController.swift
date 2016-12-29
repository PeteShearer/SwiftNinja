//
//  ViewController.swift
//  Fontly
//
//  Created by Peter Shearer on 12/28/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var dashLabel: UILabel!
    @IBOutlet var lightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dashLabel.font = UIFont(name: "QuicksandDash-Regular", size: 35)
        dashLabel.text = "HELLO FROM QUICKSAND DASH"
        
        lightLabel.font = UIFont(name: "Quicksand-LightItalic", size: 35)
        lightLabel.text = "HELLO FROM QUICKSAND LIGHT ITALIC"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

