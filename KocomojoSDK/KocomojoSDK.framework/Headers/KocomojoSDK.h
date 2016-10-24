//
//  KocomojoSDK.h
//  KocomojoSDK
//
//  Created by Elijah Windsor on 8/18/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <KocomojoSDK/KocomojoButton.h>

typedef void(^ApiValidationBlock)(BOOL isValid);

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT double KocomojoSDKVersionNumber;
FOUNDATION_EXPORT const unsigned char KocomojoSDKVersionString[];

extern NSString * const KocomojoButtonTouchedNotification;
extern NSString * const KocomojoButtonEnabledNotification;
extern NSString * const KocomojoFullScreenViewClosedNotification;
extern NSString * const KocomojoExperiencesInRangeNotification;

@interface KocomojoSDK : NSObject

@property (strong, nonatomic, nonnull) NSString *apiKey;
@property (strong, nonatomic, nonnull) NSNumber *radiusInMiles;
@property (strong, nonatomic, nonnull) NSString *pushTemplateSingular;
@property (strong, nonatomic, nonnull) NSString *pushTemplatePlural;
@property (nonatomic) BOOL showPushNotifications;
@property (strong, nonatomic, nonnull) NSNumber *minimumSecondsBetweenPushNotifications;

+ (instancetype)sharedInstance;
- (void)validateApiKey:(ApiValidationBlock)validationBlock;
- (void)didReceiveLocalNotification:(UILocalNotification *)notification;

@end

NS_ASSUME_NONNULL_END
