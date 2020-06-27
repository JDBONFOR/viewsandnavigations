//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Juan Bonforti on 27/06/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebView.load(URLRequest(url: URL(string: "https://google.com")!))
        
        myMap.centerCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
        
    }

    @IBAction func myButtonAction(_ sender: Any) {
        myView.isHidden = true
    }
    
}

