//
//  ViewController.swift
//  B1GTeams
//
//  Created by Peter Shearer on 5/14/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let b1gTeams = ["Michigan State Spartans", "Ohio State Buckeyes", "Michigan Wolverines",
                    "Penn State Nittany Lions", "Indiana Hoosiers", "Rutgers Scarlet Knights", "Maryland Terrapins",
                    "Iowa Hawkeyes", "Northwestern Wildcats", "Wisconsin Badgers", "Nebraska Cornhuskers",
                    "Minnesota Golden Gophers", "Illinois Illini", "Purdue Boilermakers"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return number of rows
        return b1gTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dequeue a cell to use (if this is the first time, we will get a shiny new one)
        let cell = tableView.dequeueReusableCell(withIdentifier: "team", for: indexPath)
        
        let team = b1gTeams[indexPath.row]
        
        cell.textLabel?.text = team
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Un-highlight the row
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Print out the team to show this is working
        let team = b1gTeams[indexPath.row]
        print(team)
    }

}

