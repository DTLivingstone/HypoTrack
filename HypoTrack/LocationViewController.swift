//
//  LocationViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController, Setup {
    
    @IBOutlet weak var collection: UICollectionView!
    
    @IBOutlet weak var locationHeader: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setup()
    }
    
    func setupAppearance() {
        
    }
    
    func setup() {
        self.navigationItem.title = "Location"
        locationHeader.text = "\(thisInjection.med), \(thisInjection.dose!)"
    }
    
    // collection view
    
    func setupCollectionView() {
        self.collection.collectionViewLayout = ButtonCustomLayout()
    }
    
    func configureCellForIndexPath(indexPath: NSIndexPath) -> LocationCollectionViewCell {
        let buttonCell = self.collection.dequeueReusableCellWithReuseIdentifier(LocationCollectionViewCell.identifier(), forIndexPath: indexPath) as! LocationCollectionViewCell
        
        buttonCell.button.setTitle(MedicationData.shared.medications[thisInjection.med]!.location[indexPath.row], forState: .Normal)
        
        buttonCell.button.setTitleColor(MedicationData.shared.medications[thisInjection.med]!.color.buttonColorObject(), forState: .Normal)
        
        return buttonCell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MedicationData.shared.medications[thisInjection.med]!.location.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return self.configureCellForIndexPath(indexPath)
    }
    
    class func identifier() -> String {
        return "LocationViewController"
    }

    @IBAction func addLocation(sender: UIButton) {
        print("add location")
        
        let actionSheet = UIAlertController(title: "Add A Location", message: nil, preferredStyle: .Alert)
        
        let addAction = UIAlertAction(title: "Add", style: .Default) { (action) in
            
            let location = actionSheet.textFields!.first!.text
            
            MedicationData.shared.medications[thisInjection.med]!.location.append(location!)
            
            print(MedicationData.shared.medications)
            
            self.collection.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            print("cancel")
        }
        
        actionSheet.addTextFieldWithConfigurationHandler { (locationTextField) in
            locationTextField.autocorrectionType = UITextAutocorrectionType.Yes
        }
        actionSheet.addAction(addAction)
        actionSheet.addAction(cancelAction)
        
        self.presentViewController(actionSheet, animated: true, completion: nil)
        
        
    }
    
    @IBAction func removeLocation(sender: UIButton) {
        print("remove location")
    }
    
    @IBAction func selectLocation(sender: UIButton) {
        if let location = sender.titleLabel!.text {
            thisInjection.location = location
            print(thisInjection)
        }
    }
}
