//
//  DoseViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class DoseViewController: UIViewController,Setup {
    
    @IBOutlet weak var collection: UICollectionView!
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
        doseHeader.text = thisInjection.med
    }
    
    // collection view
    
    func setupCollectionView() {
        self.collection.collectionViewLayout = ButtonCustomLayout()
    }
    
    func configureCellForIndexPath(indexPath: NSIndexPath) -> DoseCollectionViewCell {
        let buttonCell = self.collection.dequeueReusableCellWithReuseIdentifier(DoseCollectionViewCell.identifier(), forIndexPath: indexPath) as! DoseCollectionViewCell
        
        buttonCell.button.setTitle(MedicationData.shared.medications[thisInjection.med]!.doses[indexPath.row], forState: .Normal)
        
        buttonCell.button.setTitleColor(MedicationData.shared.medications[thisInjection.med]!.color.buttonColorObject(), forState: .Normal)
        
        return buttonCell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MedicationData.shared.medications[thisInjection.med]!.doses.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return self.configureCellForIndexPath(indexPath)
    }
    
    class func identifier() -> String {
        return "DoseViewController"
    }
    
    @IBAction func addDose(sender: UIButton) {
        
        let actionSheet = UIAlertController(title: "Add A Dose", message: nil, preferredStyle: .Alert)
        
        let addAction = UIAlertAction(title: "Add", style: .Default) { (action) in
            
            let dose = actionSheet.textFields!.first!.text
            
            MedicationData.shared.medications[thisInjection.med]!.doses.append(dose!)
            
            print(MedicationData.shared.medications)
            
            self.collection.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            print("cancel")
        }
        
        actionSheet.addTextFieldWithConfigurationHandler { (doseTextField) in
            doseTextField.autocorrectionType = UITextAutocorrectionType.Yes
        }
        actionSheet.addAction(addAction)
        actionSheet.addAction(cancelAction)
        
        self.presentViewController(actionSheet, animated: true, completion: nil)
        
    }
    
    @IBAction func removeDose(sender: UIButton) {
        print("remove dose")
    }
    
    @IBAction func selectDose(sender: UIButton) {
        if let dose = sender.titleLabel!.text {
            thisInjection.dose = dose
            print(thisInjection)
        }
    }

}
