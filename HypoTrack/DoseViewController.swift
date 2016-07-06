//
//  DoseViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class DoseViewController: UIViewController, Setup {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }
    
    func setupAppearance() {
        
    }
    
    func setup() {
        self.navigationItem.title = "Dose"
    }
    
    @IBAction func addDose(sender: UIButton) {
        print("add dose")
    }
    
    @IBAction func removeDose(sender: UIButton) {
        print("remove dose")
    }
}
