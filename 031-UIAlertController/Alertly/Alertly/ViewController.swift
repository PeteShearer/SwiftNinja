//
//  ViewController.swift
//  Alertly
//
//  Created by Peter Shearer on 12/24/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func displayAsAlertWasClicked(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Alert", message: inputField.text!, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {(result: UIAlertAction) -> Void in
            print("OK from Alert Box")
        }
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }

    @IBAction func displayAsActionSheetWasClicked(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Action Sheet", message: inputField.text!, preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .default) {(result: UIAlertAction) -> Void in
            print("OK from Action Sheet")
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {(result: UIAlertAction) -> Void in
            print("Cancel from Action Sheet")
        }
        
        let fileNotFoundAction = UIAlertAction(title: "File Not Found", style: .destructive) {(result: UIAlertAction) -> Void in
            print("File Not Found from Action Sheet")
        }
        
        let alsoDestructiveAction = UIAlertAction(title: "AAAARRRGGGHHHH", style: .destructive) {(result: UIAlertAction) -> Void in
            print("Also Destructive from Action Sheet")
        }
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        alertController.addAction(fileNotFoundAction)
        alertController.addAction(alsoDestructiveAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

