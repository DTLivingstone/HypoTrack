//
//  Injection.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/1/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import Foundation

var injections = [Injection]()

var thisInjection = Injection(med: "")

struct Injection {
    var med: String
    var dose: String?
    var location: String?
    var date: NSDate?
    
    init(med: String) {
        self.med = med
        self.dose = nil
        self.location = nil
        self.date = nil
        
    }
}