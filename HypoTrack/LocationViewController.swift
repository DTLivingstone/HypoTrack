//
//  LocationViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController, Setup {
    
    @IBOutlet weak var locationHeader: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }
    
    func setupAppearance() {
        
    }
    
    func setup() {
        self.navigationItem.title = "Location"
        locationHeader.text = "Chemical X 30mg"
    }
    
    @IBAction func addLocation(sender: UIButton) {
        print("add location")
    }
    
    @IBAction func removeLocation(sender: UIButton) {
        print("remove location")
    }
}
