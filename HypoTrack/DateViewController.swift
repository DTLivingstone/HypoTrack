//
//  DateViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class DateViewController: UIViewController, Setup {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }
    
    func setupAppearance() {
        
    }
    
    func setup() {
        self.navigationItem.title = "Medication"
    }
    
    @IBAction func now(sender: UIButton) {
        print(NSDate.init())
    }
    
    @IBAction func customTime(sender: UIButton) {
        print("custom time")
    }
    
}
