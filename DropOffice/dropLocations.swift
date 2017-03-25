//
//  pinLocations.swift
//  DropOffice
//
//  Created by Jorge Gomez on 2017-03-17.
//  Copyright © 2017 Jorge Gomez. All rights reserved.
//

import MapKit

class dropLocations: NSObject, MKAnnotation {

  var identifier: String?
  var title: String?
  var subtitle: String?
  var coordinate: CLLocationCoordinate2D
  
  
  init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D, identifier: String) {
    self.title = title
    self.subtitle = subtitle
    self.coordinate = coordinate
    self.identifier = identifier
    
    super.init()
    
  }  
  
}

