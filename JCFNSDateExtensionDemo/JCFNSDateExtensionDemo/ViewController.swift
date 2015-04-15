//
//  ViewController.swift
//  JCFNSDateExtensionDemo
//
//  Created by Julio Cesar Fausto on 4/15/15.
//  Copyright (c) 2015 jcfausto. All rights reserved.
//
//  This piece of code is released under MIT licence.
//  Check it here: http://jcfausto.mit-license.org
//  You can find me at twitter @jcfausto | hello@jcfausto.com

import UIKit

struct TableItem {
    let title: String
    let description: String
}

class ViewController: UIViewController, UITableViewDelegate {

    var date = NSDate()
    
    var sections:[String] = []
    var items:[[TableItem]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //A formatter to print a localized date and time
        var formatter = NSDateFormatter();
        
        //To show the timezone: formatter.dateformat = "yyyy-MM-dd HH:mm:ss ZZZ"
        //To hide the timezone: formatter.dateforma = "yyyy-MM-dd HH:mm:ss"
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss";

        sections.append("Week")
        var sectionItems = [TableItem]()
        
        sectionItems.append(TableItem(title: "date.beginningOfWeek()", description: formatter.stringFromDate(date.beginningOfWeek())))
        sectionItems.append(TableItem(title: "date.endOfWeek()", description: formatter.stringFromDate(date.endOfWeek())))
        
        items.append(sectionItems)
        
        sections.append("Month")
        sectionItems = [TableItem]()
        
        sectionItems.append(TableItem(title: "date.beginningOfMonth()", description: formatter.stringFromDate(date.beginningOfMonth())))
        sectionItems.append(TableItem(title: "date.endOfMonth()", description: formatter.stringFromDate(date.endOfMonth())))
        
        items.append(sectionItems)
        
        sections.append("Year")
        sectionItems = [TableItem]()
        
        sectionItems.append(TableItem(title: "date.beginningOfYear()", description: formatter.stringFromDate(date.beginningOfYear())))
        sectionItems.append(TableItem(title: "date.endOfYear()", description:  formatter.stringFromDate(date.endOfYear())))
        
        items.append(sectionItems)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        let item = items[indexPath.section][indexPath.row]
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.description
        cell.detailTextLabel?.textColor = UIColor(red: 81.0/255.0, green:102.0/255.0, blue:145.0/255.0, alpha:1.0);
        
        return cell
    }


}

