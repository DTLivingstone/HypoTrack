//
//  Medication.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

var medications = [String: Medication]()

struct Medication {
    let med: String
    var doses: [doseType]?
    var location: [locationType]?
    let color: ButtonColorType
    
    init?(med: String) {
        self.med = med
        self.doses = nil
        self.location = nil
        self.color = ButtonColorType(rawValue: Int(CFHash(med) % 10 / 2))!
        
        if medications[med] == nil {
            medications[med] = self
            print(medications[med])
        }
    }
    
    // update medications array in NSKeyedArchiver
    
    typealias doseType = (Float?, String)
    typealias locationType = (SideType, String)
    
    enum SideType {
        case Left, Right, Center, Middle
    }
    
    enum ButtonColorType: Int {
        case orange = 0, green, blue, lightBlue, purple
        
        func buttonColorObject() -> UIColor {
            switch self {
            case .orange:
                return UIColor(hue:0.112, saturation:0.793, brightness:0.964, alpha:1)
                
            case .green:
                return UIColor(hue:0.221, saturation:0.701, brightness:0.792, alpha:1)
                
            case .blue :
                return UIColor(hue:0.584, saturation:1, brightness:0.537, alpha:1)
                
            case .lightBlue:
                return UIColor(hue:0.554, saturation:0.670, brightness:0.958, alpha:1)
                
            case .purple:
                return UIColor(hue:0.272, saturation:0.776, brightness:0.595, alpha:1)
            }
        }
    }
    
    func buttonRandomizer(med: String) -> ButtonColorType {
        let shortHash = Int(CFHash(med) % 10 / 2)
        
        return ButtonColorType(rawValue: shortHash)!
    }
    
}