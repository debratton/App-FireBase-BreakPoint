//
//  FeedCell.swift
//  BreakPoint
//
//  Created by David E Bratton on 11/9/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, message: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.messageLbl.text = message
    }
}
