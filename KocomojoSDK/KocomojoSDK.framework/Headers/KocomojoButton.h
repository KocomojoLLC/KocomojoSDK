//
//  KocomojoButton.h
//  EspyIt
//
//  Created by Elijah Windsor on 8/22/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KocomojoButton : UIView

@property (strong, nonatomic, nonnull) NSString *enabledImageName;
@property (strong, nonatomic, nonnull) NSString *disabledImageName;
@property (readonly) BOOL isEnabled;

@end
