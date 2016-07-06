//
//  Injection.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import Foundation

var injections = [Injection]()

struct Injection {
    let med: String
    let dosage: dosageType
    let location: locationType
    let date: NSDate
}