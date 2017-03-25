//
//  DetailVC.swift
//  DropOffice
//
//  Created by Jorge Gomez on 2017-03-24.
//  Copyright © 2017 Jorge Gomez. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

 
  @IBOutlet weak var imageLocation: UIImageView!
  
  @IBOutlet weak var nameLocation: UILabel!
  
  @IBOutlet weak var addressLocation: UILabel!
  
  
    var locationSelected: dropLocations! = nil
  
    override func viewDidLoad() {
        super.viewDidLoad()
        imageLocation.image = UIImage(named: locationSelected.title!)
        nameLocation.text = locationSelected.title!
        addressLocation.text = locationSelected.subtitle!
    }
  

}
