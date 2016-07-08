//
//  MedicationData.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/7/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class MedicationData: NSObject, NSCoding {
    
    static let shared = MedicationData()
    
    var medications = [String: Medication]()
    
    private override init() {
        
    }
    
    // MARK: NSCoding
    
    required convenience init?(coder decoder: NSCoder) {
        var medications = decoder.decodeObject()
        
        self.init(
            medications = medications
        )
    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self)
    }
    
//    let c = NSKeyedArchiver.archiveRootObject(self, toFile: <#T##String#>)
    
    
}
