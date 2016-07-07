//
//  ConfirmationViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController, Setup {
    
    @IBOutlet weak var confirmationHeader: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }
    
    func setupAppearance() {
        
    }
    
    func setup() {
        self.navigationItem.title = "Confirmation"
        confirmationHeader.text = "Chemical X 30mg Left Arm 9:53 AM Today" // need this to be on 3 lines
    }
    
    @IBAction func confirm(sender: UIButton) {
        print("confirm")
    }
}
