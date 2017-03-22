//
//  ProfileVC.swift
//  DropOffice
//
//  Created by Jorge Gomez on 2017-03-20.
//  Copyright © 2017 Jorge Gomez. All rights reserved.
//

import UIKit


class ProfileVC: UIViewController {

  @IBOutlet weak var locationLbl: UILabel!
  @IBOutlet weak var professionLbl: UILabel!
  @IBOutlet weak var nameLbl: UILabel!
  @IBOutlet weak var profileImage: UIImageView!
  @IBOutlet weak var hireBtn: UIButton!
  @IBOutlet weak var inviteBtn: UIButton!
  @IBOutlet weak var messageBtn: UIButton!
  @IBOutlet weak var sideMenuBtn: UIBarButtonItem!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2
        self.profileImage.clipsToBounds = true
      
        if(revealViewController() != nil){
          sideMenuBtn.target = revealViewController()
          sideMenuBtn.action = #selector(SWRevealViewController.revealToggle(_:))
      }
        
    }
  
  @IBAction func sideMenuTapped(_ sender: Any) {

  }
  

}
