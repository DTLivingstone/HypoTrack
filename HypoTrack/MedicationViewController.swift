//
//  ViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 6/30/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class MedicationViewController: UIViewController, Setup {
    
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
    
    func presentActionSheet() {
        
        let actionSheet = UIAlertController(title: "Add A Medication", message: nil, preferredStyle: .Alert)
        
        let addAction = UIAlertAction(title: "Add", style: .Default) { (action) in
            let med = actionSheet.textFields!.first!.text // add guard statement
            let color = buttonRandomizer(med!)
            
            if medications[med!] == nil {
                medications[med!] = Medication(med: med!, doses: nil, location: nil, color: color)
                print(medications)
            }
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            print("cancel")
        }
        
        actionSheet.addTextFieldWithConfigurationHandler { (medTextField) in
            medTextField.autocorrectionType = UITextAutocorrectionType.Yes
        }
        actionSheet.addAction(addAction) // order?
        actionSheet.addAction(cancelAction)
        
        self.presentViewController(actionSheet, animated: true, completion: nil)
        
    }
    
    @IBAction func addMed(sender: UIButton) {
        self.presentActionSheet()
    }
    
    
    @IBAction func removeMed(sender: UIButton) {
        print("remove med")
    }
}

