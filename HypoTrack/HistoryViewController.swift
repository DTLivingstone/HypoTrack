//
//  HistoryViewController.swift
//  HypoTrack
//
//  Created by David Livingstone on 7/8/16.
//  Copyright © 2016 David Livingstone. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return injections.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HistoryCell", forIndexPath: indexPath)
        let med = injections[indexPath.row].med
        let dose = injections[indexPath.row].dose!
        let location = injections[indexPath.row].location!
        let date = injections[indexPath.row].date!
        
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .ShortStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US")
        
        let formattedDate = formatter.stringFromDate(date)
        
        cell.textLabel!.text = "\(med): \(dose) \n\(location)"
        cell.detailTextLabel!.text = formattedDate
        
        return cell
    }
}