//
//  MapVC.swift
//  DropOffice
//
//  Created by Jorge Gomez on 2017-03-17.
//  Copyright © 2017 Jorge Gomez. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

  @IBOutlet weak var mapView: MKMapView!
  
    var coordinates: [[Double]]!
    var addresses: [String]!
    var names: [String]!
    var images: [UIImage]!
    var identifiers: [String]!
  
  
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.showsUserLocation = true
        mapView.delegate = self
        coordinates = [[42.334091, -83.050721],[42.339799, -83.045548], [42.36463232550283,-83.023681640625],[42.3360756,-83.04929229999999]]
        addresses = ["1420 Washington Blvd #301, Detroit","2000 Brush St, Detroit","440 Burroughs St, Detroit","1555 Broadway St, Detroit"]
        names = ["Bamboo Detroit", "Mobility - Techstars", "TechTown Detroit","ASHE Supply Co"]
        identifiers = ["Building","Building","Building","Cafe"]
      
        //Request permission from user to access current location.
        let locationManager = CLLocationManager()
        locationManager.requestAlwaysAuthorization()
        if CLLocationManager.locationServicesEnabled() {
          locationManager.delegate = self
        }
      
        for i in 0...coordinates.count-1 {
          let theCoordinate = coordinates[i]
          let theAddress = addresses[i]
          let theName = names[i]
          let theIdentifier = identifiers[i]
          
          let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(theCoordinate[0], theCoordinate[1])
          let point = dropLocations(title: theName, subtitle: theAddress, coordinate: location, identifier: theIdentifier)
          
          
          let span: MKCoordinateSpan = MKCoordinateSpanMake(0.2, 0.2)
          let region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
          mapView.setRegion(region, animated: true)
          mapView.addAnnotation(point)
          
        }
    }
    
  
  func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    // Don't want to show a custom image if the annotation is the user's location.
    if let annotation = annotation as? dropLocations{

      // Better to make this class property
      let annotationIdentifier = "AnnotationIdentifier"
      
      var annotationView: MKAnnotationView?
      if let dequeuedAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationIdentifier) {
          annotationView = dequeuedAnnotationView
          annotationView?.annotation = annotation
      }
      else {
          annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: annotationIdentifier)
          annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
      }

      if let annotationView = annotationView {
          // Configure your annotation view here
        
          annotationView.canShowCallout = true
          if(annotation.identifier == "Building"){
              annotationView.image = UIImage(named: "Building")
          }
          if(annotation.identifier == "Cafe"){
            annotationView.image = UIImage(named: "Cafe")
          }
      }

      return annotationView
    }
    
    return nil
}


  func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, 
               calloutAccessoryControlTapped control: UIControl) {
    
      let location = view.annotation as! dropLocations
      performSegue(withIdentifier: "detailInfo", sender: location)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "detailInfo" {
        let controller = segue.destination as! DetailVC
        controller.locationSelected = sender as! dropLocations!
      }
  }
  
  


}
