//
//  AddViewController.swift
//  MasterDetail
//
//  Created by Peter Shearer on 12/18/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet var episodeName: UITextField!
    @IBOutlet var episodeNumber: UITextField!
    @IBOutlet var doctorName: UITextField!
    @IBOutlet var writerName: UITextField!
    @IBOutlet var summary: UITextField!
    
    func getNewEpisode() -> Episode {
        return Episode(
            episodeTitle: episodeName.text!,
            writerName: writerName.text!,
            doctorName: doctorName.text!,
            episodeNumber: episodeNumber.text!,
            synopsis: summary.text!)
    }
}
