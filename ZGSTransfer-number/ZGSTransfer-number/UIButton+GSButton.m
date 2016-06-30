//
//  UIButton+GSButton.m
//  ZGSTransfer-number
//
//  Created by Apple on 16/6/30.
//  Copyright © 2016年 张国森. All rights reserved.
//

#import "UIButton+GSButton.h"

@implementation UIButton (GSButton)
-(void)GSButtonWithButtonName:(NSString *)name{
    
    [self setTitle:name forState:UIControlStateNormal];
    
}
@end
