//
//  KocomojoSDK.h
//  KocomojoSDK
//
//  Created by Elijah Windsor on 8/18/16.
//  Distribution, publication or any other public use or commercial exploitation is prohibited.
//  Copyright 2016 Kocomojo, LLC.
//


#import <UIKit/UIKit.h>
#import <KocomojoSDK/KocomojoButton.h>
#import <KocomojoSDK/KocomojoExperience.h>

typedef void(^ApiValidationBlock)(BOOL isValid);

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT double KocomojoSDKVersionNumber;
FOUNDATION_EXPORT const unsigned char KocomojoSDKVersionString[];

extern NSString * const KocomojoButtonTouchedNotification;
extern NSString * const KocomojoButtonEnabledNotification;
extern NSString * const KocomojoFullScreenViewClosedNotification;
extern NSString * const KocomojoExperiencesInRangeNotification;
extern NSString * const KocomojoBluetoothDisabledNotification;
extern NSString * const KocomojoMainExperienceReadyNotification;

@interface KocomojoSDK : NSObject

@property (strong, nonatomic, nonnull) NSString *apiKey;
@property (strong, nonatomic, nonnull) NSNumber *radiusInMiles;
@property (strong, nonatomic, nonnull) NSString *pushTemplateSingular;
@property (strong, nonatomic, nonnull) NSString *pushTemplatePlural;
@property (nonatomic) BOOL showPushNotifications;
@property (strong, nonatomic, nonnull) NSNumber *minimumSecondsBetweenPushNotifications;
@property (nonatomic) BOOL automaticallyShowExperiences;

+ (instancetype)sharedInstance;
- (void)validateApiKey:(ApiValidationBlock)validationBlock;
- (void)didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings;
- (void)didReceiveLocalNotification:(UILocalNotification *)notification;

@end

NS_ASSUME_NONNULL_END
