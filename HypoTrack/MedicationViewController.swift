//
//  ViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 6/30/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class MedicationController: UIViewController, Setup {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func setupAppearance() {
        
    }
    
    func setup() {
        self.navigationItem.title = "HypoTrack"
    }
    
    func presentActionSheet() {
        let actionSheet = UIAlertController(title: "Medication", message: "Add a Medication", preferredStyle: .Alert)
        
        let medTextField = UITextField(coder: <#T##NSCoder#>)
        
        let addAction = UIAlertAction(title: "Add", style: .Default) {(action) in
            print(action)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Destructive) {(action) in
            print(action)
        }
        
        actionSheet.addTextFieldWithConfigurationHandler(<#T##configurationHandler: ((UITextField) -> Void)?##((UITextField) -> Void)?##(UITextField) -> Void#>)
        actionSheet.addAction(addAction) // order?
        actionSheet.addAction(cancelAction)
        
//        var preferredAction = addAction
        
        self.presentViewController(actionSheet, animated: true, completion: nil)
        
    }
    
    @IBAction func addMed(sender: UIButton) {
        self.presentActionSheet()
    }
    
    
    @IBAction func removeMed(sender: UIButton) {
        print("remove")
    }
    
}

