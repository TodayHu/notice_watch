//
//  InterfaceController.swift
//  watchkitsample3 WatchKit Extension
//
//  Created by HIRATSUKA SHUNSUKE on 2015/03/11.
//  Copyright (c) 2015年 HIRATSUKA SHUNSUKE. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func didReceiveLocalNotification(localNotification: UILocalNotification,
        withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
    {
        println("testtesttest")
    }

}
