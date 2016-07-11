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
        
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .ShortStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US")
        
        let formattedDate = formatter.stringFromDate(thisInjection.date!)
        print(thisInjection.date!)
        print(formattedDate)
        
        confirmationHeader.text = "\(thisInjection.med), \(thisInjection.dose!), \n \(thisInjection.location!) on \(formattedDate)"
    }
    
    @IBAction func confirm(sender: UIButton) {
        injections.append(thisInjection)
    }
}
