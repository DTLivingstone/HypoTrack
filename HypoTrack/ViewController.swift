//
//  ViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 6/30/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Setup {

    func setupAppearance() {
        
    }
    
    func setup() {
        self.navigationItem.title = "HypoTrack"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

