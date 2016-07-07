//
//  ViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 6/30/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

// protocol here?

class MedicationViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, Setup {
    
    @IBOutlet weak var collection: UICollectionView!
    
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
    
    // Collection View
    
    func setupCollectionView() {
        self.collection.collectionViewLayout = ButtonCustomLayout()
    }
    
    class func identifier() -> String {
        return "MedicationViewController"
    }
    
    func configureCellForIndexPath(indexPath: NSIndexPath) -> ButtonCollectionViewCell {
        let buttonCell = self.collection.dequeueReusableCellWithReuseIdentifier(ButtonCollectionViewCell.identifier(), forIndexPath: indexPath) as! ButtonCollectionViewCell
        
//        buttonCell.button.setTitle("Test Button", forState: normal)
        
        return buttonCell
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // return number of buttons
        return 1
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return self.configureCellForIndexPath(indexPath)
    }
    
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        // if in normal mode, add med to current injection
        // if in delete mode, delete medication
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

