//
//  DatePickerViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/6/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit


class DatePickerViewController: UIViewController, Setup {
    
    @IBOutlet weak var DatePickerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }
    

    func setup() {
        self.navigationItem.title = "Select Time"
        self.DatePickerLabel.text = "Chemical X 30mg Left Arm" // need this on 2 lines
    }
    
    func setupAppearance() {
        
    }
    
}