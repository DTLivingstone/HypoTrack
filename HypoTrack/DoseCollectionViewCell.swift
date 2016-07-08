//
//  DoseCollectionViewCell.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/8/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class DoseCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var button: UIButton!
    
    class func identifier() -> String {
        return "DoseCollectionViewCell"
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        // reset title
        // reset color
    }   
}