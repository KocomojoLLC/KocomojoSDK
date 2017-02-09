//
//  KocomojoButton.h
//  EspyIt
//
//  Created by Elijah Windsor on 8/22/16.
//  Distribution, publication or any other public use or commercial exploitation is prohibited.
//  Copyright 2016 Kocomojo, LLC.
//

#import <UIKit/UIKit.h>

@interface KocomojoButton : UIView

@property (strong, nonatomic, nonnull) NSString *enabledImageName;
@property (strong, nonatomic, nonnull) NSString *disabledImageName;
@property (readonly) BOOL isEnabled;

@end
