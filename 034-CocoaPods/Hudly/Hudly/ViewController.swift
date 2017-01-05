//
//  ViewController.swift
//  Hudly
//
//  Created by Peter Shearer on 1/5/17.
//  Copyright © 2017 Peter Shearer. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showWasClicked(_ sender: UIButton) {
        SVProgressHUD.show(withStatus: "Hi from SVProgressHUD")
    }

    @IBAction func dismissWasClicked(_ sender: UIButton) {
        SVProgressHUD.dismiss()
    }
}

