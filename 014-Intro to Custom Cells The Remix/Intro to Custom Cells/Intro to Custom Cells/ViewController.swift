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
        
        let nib = UINib(nibName: "NinjaCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ninja")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ninja", for: indexPath) as! NinjaCell
        
        let name = names[indexPath.row]
        let pic = pics[indexPath.row]
        
        cell.populateCell(withText: name, andImageFile: pic)
        
        return cell
    }
}

