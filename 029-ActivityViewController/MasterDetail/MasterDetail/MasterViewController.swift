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
    var selectedEpisode = Episode(
        episodeTitle: "",
        writerName: "",
        doctorName: "",
        episodeNumber: "",
        synopsis: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        objects = EpisodeRepository.getEpisodeList()
    }
    
    // MARK: - Segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            (segue.destination as! DetailViewController).detailItem = selectedEpisode
        }
    }
    
    // MARK: - Table View
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // the cells you would like the actions to appear needs to be editable
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        // You need to declare this method or else you can't swipe
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let episode = self.objects[indexPath.row]
        self.selectedEpisode = episode
        
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
            self.objects.remove(at: indexPath.row)
            self.tableView.reloadData()
        }
        
        let share = UITableViewRowAction(style: .normal, title: "Share") { (action, indexPath) in
            let activityViewController = UIActivityViewController(
                activityItems: [episode.episodeTitle, episode.episodeNumber, episode.doctorName],
                applicationActivities: nil)
            
            self.present(activityViewController, animated: true, completion: nil)
        }

        
        let selectToView = UITableViewRowAction(style: .normal, title: "Select") { (action, indexPath) in
            
            self.performSegue(withIdentifier: "showDetail", sender: nil)
        }
        
        selectToView.backgroundColor = UIColor.blue
        
        return [delete, share, selectToView]
    }
    
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

