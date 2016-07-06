//
//  ConfirmationViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController, Setup {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }
    
    func setupAppearance() {
        
    }
    
    func setup() {
        self.navigationItem.title = "Confirmation"
    }
    
    @IBAction func confirm(sender: UIButton) {
        print("confirm")
    }
    
    
    @IBAction func cancel(sender: UIButton) {
        print("cancel")
    }
}
