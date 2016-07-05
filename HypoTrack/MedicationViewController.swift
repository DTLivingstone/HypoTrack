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
        
        let actionSheet = UIAlertController(title: "Add A Medication", message: nil, preferredStyle: .Alert)
        
        let addAction = UIAlertAction(title: "Add", style: .Default) {(action) in
            let med = actionSheet.textFields!.first!.text // add guard statement
            print("add medicaiton \(med)")
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) {(action) in
            print("cancel")
        }
        
        actionSheet.addTextFieldWithConfigurationHandler { (medTextField) in
            //
            medTextField.autocorrectionType = UITextAutocorrectionType.Yes
        }
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

