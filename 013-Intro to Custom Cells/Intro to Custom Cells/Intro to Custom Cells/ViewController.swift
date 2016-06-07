//
//  ViewController.swift
//  Intro to Custom Cells
//
//  Created by Peter Shearer on 6/7/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var names:[String] = []
    var pics:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        names = ["Gary", "Harry", "Larry", "Perry"]
        pics = ["Goat.png", "Hippo.png", "Lion.png", "Pig.png"]
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ninja", forIndexPath: indexPath) as! NinjaCell
        
        let name = names[indexPath.row]
        let pic = pics[indexPath.row]
        
        cell.populateCell(withText: name, andImageFile: pic)
        
        return cell
    }

}

