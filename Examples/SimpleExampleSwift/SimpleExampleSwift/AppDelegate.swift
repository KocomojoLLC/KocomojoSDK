//
//  AppDelegate.swift
//  SimpleExampleSwift
//
//  Created by Elijah Windsor on 12/15/16.
//  Copyright © 2016 Kocomojo. All rights reserved.
//

import UIKit
import KocomojoSDK


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let sharedInstance: KocomojoSDK = KocomojoSDK.sharedInstance();
        sharedInstance.apiKey = "YOUR API KEY HERE";
        sharedInstance.radiusInMiles = 15.0;
        sharedInstance.showPushNotifications = true;
        sharedInstance.validateApiKey { (valid: Bool) in
            if !valid {
                NSLog("Email info@kocomojo.com to get your API key.");
            }
        }
        
        return true
    }
    
    func application(_ application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings) {
        KocomojoSDK.sharedInstance().didRegister(notificationSettings);
    }
    
    func application(_ application: UIApplication, didReceive notification: UILocalNotification) {
        KocomojoSDK.sharedInstance().didReceive(notification);
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

