//
//  ViewController.swift
//  Debugly
//
//  Created by Peter Shearer on 12/6/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var displayLabel: UILabel!
    
    @IBOutlet var inputBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayLabel.text = ""
        displayLabel.backgroundColor = UIColor.black
        displayLabel.textColor = UIColor.white
    }

    @IBAction func buttonWasClicked(_ sender: UIButton) {
        let inputValue = inputBox.text!
        var outputMessage = ""
        
        if let parsedValue = Int(inputValue) {
            let squaredResult = squareTheNumber(number: parsedValue)
            outputMessage = "\(parsedValue) squared is \(squaredResult)"
        }
        else {
            outputMessage = "Please enter a valid integer"
        }
        
        displayLabel.text = outputMessage
    }

    
    func squareTheNumber(number: Int) -> Int {
        return number*number
    }
}

