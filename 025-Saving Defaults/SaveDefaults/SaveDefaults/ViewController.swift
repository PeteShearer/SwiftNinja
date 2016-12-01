//
//  ViewController.swift
//  SaveDefaults
//
//  Created by Peter Shearer on 12/1/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputField: UITextField!
    @IBOutlet var displayLabel: UILabel!
    
    let KEY:String = "DEFAULT_VALUE"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let defaults = UserDefaults.standard
        let savedValue = defaults.string(forKey: KEY)
        
        if let parsedSaveValue = savedValue {
            displayLabel.text = "You have previously saved \"\(parsedSaveValue)\" as the value."
        }
        else {
            displayLabel.text = "You have not yet set a value."
        }
    }
  
    @IBAction func buttonDidClick(_ sender: UIButton) {
        let input = inputField.text!
        
        let defaults = UserDefaults.standard
        
        defaults.set(input, forKey: KEY)
        
        displayLabel.text = "You have just set \"\(input)\" as the value."
        
        inputField.text = ""
    }

}

