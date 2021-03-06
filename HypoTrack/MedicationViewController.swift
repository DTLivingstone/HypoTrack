//
//  ViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 6/30/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

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
        
        let medArray = [String](MedicationData.shared.medications.keys)
        
        buttonCell.button.setTitle(medArray[indexPath.row], forState: .Normal)
        buttonCell.button.setTitleColor(MedicationData.shared.medications[medArray[indexPath.row]]!.color.buttonColorObject(), forState: .Normal)
        
        return buttonCell
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MedicationData.shared.medications.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return self.configureCellForIndexPath(indexPath)
    }
    
    func presentActionSheet() {
        
        let actionSheet = UIAlertController(title: "Add A Medication", message: nil, preferredStyle: .Alert)
        
        let addAction = UIAlertAction(title: "Add", style: .Default) { (action) in
            
            let med = actionSheet.textFields!.first!.text
            
            Medication.init(med: med!)
                        
            self.collection.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            print("cancel")
        }
        
        actionSheet.addTextFieldWithConfigurationHandler { (medTextField) in
            medTextField.autocorrectionType = UITextAutocorrectionType.Yes
        }
        actionSheet.addAction(addAction)
        actionSheet.addAction(cancelAction)
        
        self.presentViewController(actionSheet, animated: true, completion: nil)
        
    }
    
    @IBAction func addMed(sender: UIButton) {
        self.presentActionSheet()
    }
    
    
    @IBAction func removeMed(sender: UIButton) {
        print("remove med")
    }
    
    @IBAction func selectMed(sender: UIButton) {
        if let med = sender.titleLabel!.text {
            thisInjection.med = med
            print(thisInjection)
        }
    }
}

