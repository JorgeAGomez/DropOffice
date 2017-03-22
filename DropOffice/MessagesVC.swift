//
//  MessagesVC.swift
//  DropOffice
//
//  Created by Jorge Gomez on 2017-03-18.
//  Copyright © 2017 Jorge Gomez. All rights reserved.
//

import UIKit

class MessagesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 1
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
      let cellIdentifier = "Cell"
      let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MessageCell
      
      cell.updateUI()
      
      return cell
    }

}
