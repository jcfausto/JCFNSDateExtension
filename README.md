# JCFNSDateExtension
A NSDate extension with helpers to handle some date calculations
Compatible with Swift 1.2

### Important
All the dates are timezone aware and use as base calendar
the calendar defined in user´s regional settings, which 
in most cases will be the gregorian calendar.


### Available Helpers
```Swift
date.beginningOfWeek() -> NSDate
date.endOfWee() -> NSDate
date.beginningOfMonth() -> NSDate
date.endOfMonth() -> NSDate
date.beginningOfYear() -> NSDate
date.endOfYear() -> NSDate
```

### Demo Project

-- Developed with Xcode 6.3 and iOS SDK 8.3 -- 

The demo project shows how you can use the extension by presenting a simple table view app showing the helpers and its results formatted with NSDateFormatter to present the dates considering the your current timezone.

![Alt text](JCFNSDateExtensionDemo.png "Demo Application Screenshot")
