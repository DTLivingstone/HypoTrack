//
//  ButtonCollectionViewCell.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/6/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class ButtonCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var button: UIButton!
    
    class func identifier() -> String {
        return "ButtonCollectionViewCell"
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
       
        // reset title
        // reset color
        
    }
    
}
