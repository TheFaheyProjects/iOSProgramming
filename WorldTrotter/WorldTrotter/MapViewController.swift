//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Kyle Fahey on 2/17/21.
//  Copyright © 2021 The Fahey Projects. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        // Create a Map View
        mapView = MKMapView()
        
        // Set it as *the* view of this view controller
        view = mapView
        
        // Constraints
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
    }
    
    // Loads interface file
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MapViewController loaded its view.")
    }
    
}
