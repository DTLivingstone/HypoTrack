//
//  DoseViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class DoseViewController: UIViewController,Setup {
    
    @IBOutlet weak var doseHeader: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }
    
    func setupAppearance() {
        
    }
    
    func setup() {
        self.navigationItem.title = "Dose"
        doseHeader.text = "Chemical X"
    }
    
    @IBAction func addDose(sender: UIButton) {
        print("add dose")
    }
    
    @IBAction func removeDose(sender: UIButton) {
        print("remove dose")
    }
}
