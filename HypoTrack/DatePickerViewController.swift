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
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }
    

    func setup() {
        self.navigationItem.title = "Select Time"
        self.DatePickerLabel.text = "\(thisInjection.med), \(thisInjection.dose!), \(thisInjection.location!)"
    }
    
    func setupAppearance() {
        
    }
    
    @IBAction func pickDate(sender: UIButton) {
        print(self.datePicker.date)
        thisInjection.date = self.datePicker.date
    }
    
    
}