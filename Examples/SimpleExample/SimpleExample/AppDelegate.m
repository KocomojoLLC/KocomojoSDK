//
//  AppDelegate.m
//  SimpleExample
//
//  Created by Elijah Windsor on 12/12/16.
//  Copyright © 2016 Kocomojo. All rights reserved.
//

#import "AppDelegate.h"
#import <KocomojoSDK/KocomojoSDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    KocomojoSDK *sharedInstance = [KocomojoSDK sharedInstance];
    
    [sharedInstance setApiKey:@"YOUR API KEY HERE"];
    [sharedInstance setRadiusInMiles:[NSNumber numberWithFloat:15.0f]];  // set it to number of miles
    [sharedInstance setShowPushNotifications:YES];  // this is optional, more information below
    
    [sharedInstance validateApiKey:^(BOOL isValid) {
        if(isValid == NO) {
            NSLog(@"Email info@kocomojo.com to get your API key.");
        }
    }];
    return YES;
}

- (void)application:(UIApplication *)application didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings {
    [[KocomojoSDK sharedInstance] didRegisterUserNotificationSettings:notificationSettings];
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    [[KocomojoSDK sharedInstance] didReceiveLocalNotification:notification];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
