//
//  KocomojoButton.h
//  EspyIt
//
//  Created by Elijah Windsor on 8/22/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KocomojoButton : UIView

- (void)setEnabledImageNamed:(NSString *)enabledImageName;
- (void)setDisabledImageNamed:(NSString *)disabledImageName;

@property (readonly) BOOL isEnabled;

@end
