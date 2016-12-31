//
//  ViewController.swift
//  Alertly2
//
//  Created by Peter Shearer on 12/31/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonWasClicked(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Login", message: "Enter the secret password", preferredStyle: .alert)
        alertController.addTextField { (text) in
            text.placeholder = "Enter Password Here"
            text.isSecureTextEntry = true
            text.keyboardType = UIKeyboardType.alphabet
        }
        
        let loginAction = UIAlertAction(title: "Login", style: .default) { (result: UIAlertAction) -> Void in
            let passwordField  = alertController.textFields![0] as UITextField
            let passwordValue = passwordField.text!
            
            
            // PLEASE DO NOT EVER DO A LOGIN LIKE THIS
            // No hard coding values
            // No password without username, etc.
            // This is just a stupid toy example, kept simple to illustrate an idea, not EVER meant to be copied directly with no modification
            if passwordValue == "password" {
                self.performSegue(withIdentifier: "postLogin", sender: nil)
            }
        }
        
        let cancelAction = UIAlertAction(title:"Cancel", style: .cancel) { (result: UIAlertAction) -> Void in
            print("Login Cancelled")
        }
        
        alertController.addAction(loginAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated:true, completion: nil)
    
    }

}

