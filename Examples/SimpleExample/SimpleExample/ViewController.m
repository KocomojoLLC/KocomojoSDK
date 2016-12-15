//
//  ViewController.m
//  SimpleExample
//
//  Created by Elijah Windsor on 12/12/16.
//  Copyright © 2016 Kocomojo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // button is assigned in LaunchScreen.storyboard.
    [self.button setDisabledImageName:@"kocomojo_disabled"];
    [self.button setEnabledImageName:@"kocomojo"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
