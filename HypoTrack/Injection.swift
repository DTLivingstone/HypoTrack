//
//  Injection.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import Foundation

struct Injection { // make sure to give this a failable initilializer because the user might not finish
    let med: Medication
    let dosage: dosageType
    let location: locationType
    let date: NSDate
}