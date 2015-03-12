//
//  AppDelegate.swift
//  watchkitsample3
//
//  Created by HIRATSUKA SHUNSUKE on 2015/03/11.
//  Copyright (c) 2015年 HIRATSUKA SHUNSUKE. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let osVersion = UIDevice.currentDevice().systemVersion
        if osVersion < "8.0" {
            application.registerForRemoteNotificationTypes(
                UIRemoteNotificationType.Badge |
                UIRemoteNotificationType.Sound |
                    UIRemoteNotificationType.Alert )
        
        }else{
        
            var types: UIUserNotificationType = UIUserNotificationType.Badge |
                                                UIUserNotificationType.Alert |
                                                UIUserNotificationType.Sound
        
            var settings: UIUserNotificationSettings = UIUserNotificationSettings( forTypes: types, categories: nil )
        
            application.registerUserNotificationSettings( settings )
            application.registerForRemoteNotifications()
        }
        println( "didFinishLaunchingWithOptions" )
        
        
        
        
        
        return true
    }

    func application(
        application: UIApplication,
        didReceiveLocalNotification notification: UILocalNotification
        ) {
            
            if (application.applicationState == UIApplicationState.Active) {
                // 起動中のとき
                var alert = UIAlertView()
                alert.title = "Message"
                alert.message = notification.alertBody
                alert.addButtonWithTitle(notification.alertAction!)
                alert.show()
            } else {
                // ここでバックグラウンドから復帰したときの処理
                println("TEST")
            }
    }
    
    func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, completionHandler: () -> Void) {
        // ここでBackgroundから復帰したときの処理
        println("TEST")
    }
    
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

