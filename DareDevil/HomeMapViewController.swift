//
//  HomeMapViewController.swift
//  DareDevil
//
//  Created by Bruce on 9/15/16.
//  Copyright © 2016 Bruce. All rights reserved.
//

import UIKit
import MapKit

class HomeMapViewController: UIViewController, CLLocationManagerDelegate{
    @IBOutlet weak var dareMap: MKMapView!
    let locationManager = CLLocationManager()
    let initialLocation = CLLocation(latitude: 37.375058, longitude: -121.909964)
    let regionRadius: CLLocationDistance = 1000
    
    
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        dareMap.setRegion(coordinateRegion, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dareMap.delegate = self
        // center map on initial location coordinates
        centerMapOnLocation(initialLocation)
        
        
        // Request to use location services while app is active
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
        
        // add  the annotations to the map here:
        let dare0 = Dare(title: "Challenged Eli to ping-pong game",image: UIImage(named: "dojo.jpg"),
            locationName: "Coding Dojo",
            coordinate: CLLocationCoordinate2D(latitude: 37.375058, longitude: -121.909964))
        
        dareMap.addAnnotation(dare0)
        
        let dare1 = Dare(title: "Raced someone here",
                        image: UIImage(named: "racing.jpg"),
                        locationName: "SSI Racing School",
                        coordinate: CLLocationCoordinate2D(latitude: 37.373017, longitude: -121.909726))
        
        dareMap.addAnnotation(dare1)
        
        let dare2 = Dare(title: "Ended unhealthy relationship with flair here",
                         image: UIImage(named: "bae.jpg"),
                         locationName: "BAE Systems",
            coordinate: CLLocationCoordinate2D(latitude: 37.374929, longitude: -121.911722))
        
        dareMap.addAnnotation(dare2)
        
        // Do any additional setup after loading the view, typically from a nib.
        print("HomeMapViewController viewDidLoad")
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("HomeMapViewController viewWillAppear")
    }


}

