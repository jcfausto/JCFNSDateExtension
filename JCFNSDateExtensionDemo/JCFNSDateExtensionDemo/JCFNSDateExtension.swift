//
//  JCFNSDateExtension.swift
//  Many Pages
//
//  Created by Julio Cesar Fausto on 4/14/15.
//  Copyright (c) 2015 Julio Cesar Fausto. All rights reserved.
//
//  This is a NSDate extension compliant with Swift 1.2 that
//  offers some helper functions for dealing with dates
//
//  This piece of code is released under MIT licence.
//  Check it here: http://jcfausto.mit-license.org
//  You can find me at twitter @jcfausto | hello@jcfausto.com

import Foundation

/**
A NSDate extension with helpers to easy your development life
*/
extension NSDate {
    
    
    /**
        Returns a NSDate representing the first day of the current week
    */
    func beginningOfWeek() -> NSDate {
        
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(NSCalendarUnit.CalendarUnitWeekday | NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitMonth, fromDate: NSDate())
        
        components.day = (components.day - (components.weekday - 1))
        components.weekday = 1 //The first day of the week
        
        return calendar.dateFromComponents(components)!
        
    }
    
    /**
        Returns a NSDate representing the last day of the current week
    */
    func endOfWeek() -> NSDate {
        
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(NSCalendarUnit.CalendarUnitWeekday | NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitMonth, fromDate: NSDate())
        
        components.day = (components.day + (7 - components.weekday))
        components.hour = 23
        components.minute = 59
        components.second = 59
        
        return calendar.dateFromComponents(components)!
        
    }
    
    /**
        Returns a NSDate representing the first day of the current month
    */
    func beginningOfMonth() -> NSDate {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitMonth, fromDate: NSDate())
        
        components.day = 1
        components.hour = 0
        components.minute = 0
        components.second = 0
        
        
        return calendar.dateFromComponents(components)!
    }
    
    /**
        Returns a NSDate representing the last day of the current month
    */
    func endOfMonth() -> NSDate {
        
        let calendar = NSCalendar.currentCalendar()
        
        let components = calendar.components(NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitMonth, fromDate: NSDate())
        
        let daysInMonth: NSRange = calendar.rangeOfUnit(NSCalendarUnit.CalendarUnitDay, inUnit: NSCalendarUnit.CalendarUnitMonth, forDate: NSDate())
        
        components.day = daysInMonth.length
        components.hour = 23
        components.minute = 59
        components.second = 59
        
        return calendar.dateFromComponents(components)!
        
    }
    
    /**
        Returns a NSDate representing the first day of the current year
    */
    func beginningOfYear() -> NSDate {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitMonth, fromDate: NSDate())
        
        components.day = 1
        components.month = 1
        components.hour = 0
        components.minute = 0
        components.second = 0
        
        
        return calendar.dateFromComponents(components)!
    }
    
    /**
        Returns a NSDate representing the last day of the current year
    */
    func endOfYear() -> NSDate {
        let calendar = NSCalendar.currentCalendar()
        
        let components = calendar.components(NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitMonth, fromDate: NSDate())
        
        components.day = 31
        components.month = 12
        components.hour = 23
        components.minute = 59
        components.second = 59
        
        return calendar.dateFromComponents(components)!
    }

    
}
