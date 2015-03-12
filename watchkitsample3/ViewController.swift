//
//  ViewController.swift
//  watchkitsample3
//
//  Created by HIRATSUKA SHUNSUKE on 2015/03/11.
//  Copyright (c) 2015年 HIRATSUKA SHUNSUKE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toNoticetoLocal(sender: AnyObject) {
        
        var localNotif:UILocalNotification? = UILocalNotification()
        
        if localNotif == nil{
            return
        }
        
        let calendar = NSCalendar(identifier: NSGregorianCalendar)!
        
        var date:NSDate = NSDate()
        
        localNotif?.fireDate = NSDate(timeIntervalSinceNow: 10)//10秒後
        localNotif?.timeZone = NSTimeZone.defaultTimeZone()
        localNotif?.alertBody = "通知を受信しました"
        localNotif?.alertAction = "Open"
        localNotif?.soundName = UILocalNotificationDefaultSoundName
        localNotif?.applicationIconBadgeNumber = 1
        let infoDict:NSDictionary! = ["EventKey": "通知を受信しました。"]
        localNotif?.userInfo = infoDict as! [NSObject : AnyObject]
        UIApplication.sharedApplication().scheduleLocalNotification(localNotif!)
        
    }

}

