//
//  NinjaCell.swift
//  Intro to Custom Cells
//
//  Created by Peter Shearer on 6/7/16.
//  Copyright © 2016 Peter Shearer. All rights reserved.
//

import UIKit

public class NinjaCell : UITableViewCell {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var displayText: UILabel!
    
    func populateCell(withText textValue: String, andImageFile: String) {
        self.displayText.text = textValue
        self.profileImage.image = UIImage(named: andImageFile)
    }
}
