//
//  MessageCell.swift
//  DropOffice
//
//  Created by Jorge Gomez on 2017-03-20.
//  Copyright © 2017 Jorge Gomez. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

  @IBOutlet weak var userImage: UIImageView!
  @IBOutlet weak var lastMessageTxt: UILabel!
  @IBOutlet weak var userNameLbl: UILabel!
  
  
  func updateUI(){
    self.userImage.layer.cornerRadius = self.userImage.frame.size.width / 2
    self.userImage.clipsToBounds = true
    
  }

}
