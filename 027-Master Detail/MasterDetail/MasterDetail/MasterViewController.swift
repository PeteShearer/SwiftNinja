//
//  MasterViewController.swift
//  MasterDetail
//
//  Created by Peter Shearer on 12/12/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    var objects = [Episode]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        objects = EpisodeRepository.getEpisodeList()
    }
    
    // MARK: - Segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let episode = objects[indexPath.row]
                (segue.destination as! DetailViewController).detailItem = episode
            }
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        let episode = objects[indexPath.row]
        cell.textLabel?.text = episode.episodeTitle
        cell.detailTextLabel?.text = episode.episodeNumber
        
        return cell
    }
}

