//
//  Medication.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

struct Medication {
    let med: String
    var dosages: [dosageType]?
    var location: [locationType]?
    let color: ButtonColorType
}

typealias dosageType = (Float?, String)
typealias locationType = (SideType, String)

enum SideType {
    case Left, Right, Center, Middle
}

enum ButtonColorType {
    
    case red, green, blue, orange, purple
    
    func buttonColorObject() -> UIColor{
        switch self {
        case .red:
            return UIColor(red: 1.0, green: 0.1, blue: 0.1, alpha: 1)
        
        case .green:
            return UIColor(red: 0.1, green: 1.0, blue: 0.1, alpha: 1)
            
        case .blue :
            return UIColor(red: 0.1, green: 0.1, blue: 1.0, alpha: 1)
            
        case .orange:
            return UIColor(red: 1.0, green: 0.5, blue: 0.5, alpha: 1)
            
        case .purple:
            return UIColor(red: 1.0, green: 0.1, blue: 1.0, alpha: 1)
        }

    }
    
}

