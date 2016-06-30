//
//  AppDelegate+GSCategory.m
//  ZGSTransfer-number
//
//  Created by Apple on 16/6/30.
//  Copyright © 2016年 张国森. All rights reserved.
//

#import "AppDelegate+GSCategory.h"
@implementation AppDelegate (GSCategory)

-(void)GS_setRootViewControllerWithViewcontroller:(UIViewController*)controller{

    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController  = controller;
    
}

@end
