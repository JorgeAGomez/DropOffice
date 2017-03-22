//
//  MapVC.swift
//  DropOffice
//
//  Created by Jorge Gomez on 2017-03-17.
//  Copyright © 2017 Jorge Gomez. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

  @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let bambooDetroitLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(42.334091, -83.050721)
        let distanceSpan: CLLocationDegrees = 2000
        let bambooDetroitPin = pinLocations(title: "Bamboo Detroit", subtitle: "Michigan", coordinate: bambooDetroitLocation)
        
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(bambooDetroitLocation, distanceSpan, distanceSpan), animated: true)
        mapView.addAnnotation(bambooDetroitPin)
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
